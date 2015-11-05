class Card < ActiveRecord::Base
	belongs_to :deck

  validates_presence_of :question, :answer
end