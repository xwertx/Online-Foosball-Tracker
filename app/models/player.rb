class Player < ActiveRecord::Base

	mount_uploader :picture, PictureUploader

	has_many :match_edits
	has_many :matches, through: :match_edits
	
end
