class Game < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :choices, through: :answers
  has_many :questions, through: :choices
end
