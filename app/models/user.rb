class User < ActiveRecord::Base

  belongs_to :answers
  has_many :games
  belongs_to :choices
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
