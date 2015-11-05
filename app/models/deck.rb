class Deck < ActiveRecord::Base
	belongs_to :user
	has_many :cards

	validates_presence_of :title
end
