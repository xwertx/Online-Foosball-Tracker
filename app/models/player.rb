class Player < ActiveRecord::Base

	mount_uploader :picture, PictureUploader

	has_many :match_edits
	has_many :matches, through: :match_edits
	
	def average_result
		sum = 0.0
    	self.match_edits.each do |r|
        	sum += r.result.to_f
    	end
    	avg = sum / self.match_edits.count
	end

	def count_wins
		wins = 0
    	self.match_edits.each do |r|
    		res = r.result.to_f
    		if res == 10
        		wins += 1
        	end 
    	end
    	return wins
	end

end
