json.array!(@votes) do |vote|
  json.extract! vote, :id, :user_id, :comment_id, :value
  json.url vote_url(vote, format: :json)
end
