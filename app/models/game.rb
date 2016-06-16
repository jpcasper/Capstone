class Game < ActiveRecord::Base
  belongs_to :answers
  belongs_to :users
end
