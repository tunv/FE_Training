json.array!(@goals) do |goal|
  json.extract! goal, :id, :user_id, :number_of_questions, :deadline
  json.url goal_url(goal, format: :json)
end