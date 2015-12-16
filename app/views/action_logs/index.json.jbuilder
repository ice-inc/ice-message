json.array!(@action_logs) do |action_log|
  json.url edit_action_log_path(action_log)
  json.title action_log.project.name + ' ' + action_log.took_time.to_s
  json.start action_log.target_date.strftime("%Y/%m/%d")
end
