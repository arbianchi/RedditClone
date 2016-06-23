class Comment < ApplicationRecord
  has_many :votes
  belongs_to :user
  belongs_to :subreddit
end
