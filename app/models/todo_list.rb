class TodoList < ApplicationRecord
  validates :title, :description, presence: true

  scope :pending, -> { where(status: false) }
  scope :completed, -> { where(status: true) }
end
