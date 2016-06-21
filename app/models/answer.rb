class Answer < ActiveRecord::Base
  has_many :users
  has_many :games
  has_many :choices
  belongs_to :questions
end
