class Game < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :choices, through: :answers
  has_many :questions, through: :choices

  validates :user_id, presence: true

  def score
    index = answers.select{ |answer| answer.choice.correct == "true" }.count
    score = ["$0","$100,000", "$250,000","$500,000","$750,000","$1,000,000","$100,000,000", "$250,000,000", "$500,000,000", "$100,000,000", "$500,000,000", "1,000,000,000", "CAJILLIONAIRE STATUS!!!!!!!!!!"]
    
    score[index]
  end
end
