class Choice < ActiveRecord::Base
  belongs_to :answers
  belongs_to :question
  belongs_to :user
end
