class Answer < ActiveRecord::Base
  has_many :users
  has_many :games
  belongs_to :choice
  belongs_to :questions
end
