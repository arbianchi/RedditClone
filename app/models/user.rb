class User < ApplicationRecord
  has_many :comments
  has_many :votes, through: :comments
  belongs_to :subreddits
  
  validates_presence_of :username
  validates_length_of :username, minimum: 2
  validates_presence_of :password
  validates_length_of :password, minimum: 2
end
