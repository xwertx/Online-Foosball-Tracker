class Match < ActiveRecord::Base

	has_many :match_edits
	has_many :players, through: :match_edits

end
