json.array!(@action_logs) do |action_log|
  json.extract! action_log, :id, :took_time, :user_id
  json.url action_log_url(action_log, format: :json)
end
