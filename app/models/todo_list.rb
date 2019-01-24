class TodoList < ApplicationRecord
  validates :title, :description, presence: true
end
