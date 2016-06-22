json.array!(@subreddits) do |subreddit|
  json.extract! subreddit, :id, :topic
  json.url subreddit_url(subreddit, format: :json)
end
