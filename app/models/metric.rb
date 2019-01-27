class Metric < ApplicationRecord
  scope :ordered,        -> { order(created_at: :desc) }
  scope :qt_controllers, -> { Metric.group(:controller_name).count }
  scope :qt_action,      -> { Metric.group(:action_name).count }
end
