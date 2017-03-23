json.extract! task, :id, :project_id, :name, :status, :user_id, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)