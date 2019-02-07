class TodoList < ApplicationRecord
  validates :title, :description, presence: true

  scope :pending        , -> { where(status: false) }
  scope :completed      , -> { where(status: true) }
  scope :group_by_status, -> { TodoList.group(:status).count }
end
