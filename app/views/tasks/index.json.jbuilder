json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :duration, :start_date, :end_date, :finished
  json.url task_url(task, format: :json)
end
