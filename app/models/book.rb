class Book < ActiveRecord::Base
	validates :title, presence: true
	validates :author, presence: true
	validates :rating, numercality: 
	{greater_than_or_equal_to: 0,
		 less_than_or_equal_to: 100}
end
