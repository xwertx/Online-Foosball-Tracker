class Match < ActiveRecord::Base

	has_many :match_edits
	has_many :players, through: :match_edits
	accepts_nested_attributes_for :match_edits, allow_destroy: true, reject_if: proc { |attrs| attrs['result'].blank? }

end
