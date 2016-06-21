class Question < ActiveRecord::Base
  belongs_to :categories
  has_many :choices
end
