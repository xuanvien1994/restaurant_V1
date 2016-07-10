class Order < ApplicationRecord
	def self.getOrderNum(getOrderNum)
	    where("name LIKE ?", "%#{getOrderNum}%") 
	end
end
