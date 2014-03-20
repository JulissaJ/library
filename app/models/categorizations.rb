class Categorizations < ActiveRecord::Base
	has_many :books
	has_many :categories
	validates :book_id, presence: true
	validates :category_id, presence: true
end
