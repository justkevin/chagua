json.array!(@polls) do |poll|
  json.extract! poll, :question, :start_date, :dealine, :admin_id
  json.url poll_url(poll, format: :json)
end
