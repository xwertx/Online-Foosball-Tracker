class MatchesController < ApplicationController
  respond_to :html

  def create
    match.update match_params
    respond_with match, location: [:matches]
  end

  private

  def match
    @match ||= Match.new
  end
  helper_method :match

  def match_params
    params[:match].permit :match_date, player_ids: []
  end

  def matches
    @matches ||= Match.all
  end
  helper_method :matches

  def players
    @players ||= Player.all
  end
  helper_method :players

end
