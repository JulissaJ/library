class Book < ActiveRecord::Base
	belongs_to :categorization
	has_many :checkouts
	validates :title, presence: true
	validates :author, presence: true
	validates :rating, numericality: 
		{greater_than_or_equal_to: 0,
		 less_than_or_equal_to: 100,
		 allow_nil: true}
end
