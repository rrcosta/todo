class Metric < ApplicationRecord
  scope :ordered,        -> { order(created_at: :desc) }
  scope :qt_controllers, -> { Metric.group(:controller_name).count }
  scope :qt_action,      -> { Metric.group(:action_name).count }
  scope :sum_tot_time,   -> { Metric.sum(:time_process) }
  scope :average_of_time,-> { Metric.average("time_process") }
  scope :average_of_view,-> { Metric.average("view_runtime") }
  scope :average_of_bd,  -> { Metric.average("db_runtime") }
end
