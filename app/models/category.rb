class Category < ActiveRecord::Base
	belongs_to :categorization
	validates :name, presence: true
	validates :name, uniqueness: true
end
