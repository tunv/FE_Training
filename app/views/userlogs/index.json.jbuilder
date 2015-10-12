json.array!(@userlogs) do |userlog|
  json.extract! userlog, :id, :user_id, :log_data
  json.url userlog_url(userlog, format: :json)
end
