class FoodItem < ApplicationRecord
	def remote_image_url
		if image_url.present?
			image_url
		else
			"http://loremflickr.com/320/240/#{CGI.escape name}"
		end
	end

	def Price
		"VND "+price.to_s
	end

	def self.search(search)
	    where("name LIKE ?", "%#{search}%") 
	end
end
