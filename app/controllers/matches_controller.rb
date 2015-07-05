class MatchesController < ApplicationController

  respond_to :html

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
    @results = @match.match_edits
  end

  def new
    @match = Match.new
    @players = Player.all
    2.times {@match.match_edits.build}
  end

  def create
    @match = Match.new(match_params)
    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def match_params
    params[:match].permit :match_date, player_ids: [], results: [], :match_edits_attributes => [:id, :result]
  end

end
