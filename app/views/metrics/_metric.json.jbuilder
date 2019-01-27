json.extract! metric, :id, :controller_name, :action_name, :time_process, :view_runtime, :db_runtime, :created_at, :updated_at
json.url metric_url(metric, format: :json)
