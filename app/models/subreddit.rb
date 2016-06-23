class Subreddit < ApplicationRecord
  has_many :comments
  has_many :users

  validates_presence_of :topic
  validates_length_of :topic, minimum: 2
end
