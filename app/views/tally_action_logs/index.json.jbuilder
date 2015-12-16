json.array!(@tally_action_logs) do |tally_action_log|
  json.extract! tally_action_log, :id
  json.url tally_action_log_url(tally_action_log, format: :json)
end
