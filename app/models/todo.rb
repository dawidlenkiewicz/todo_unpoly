class Todo < ApplicationRecord
  scope :completed, ->{ where(completed: true) }
  scope :current, ->{ where(completed: false) }

  validates :name, length: { minimum: 5 }
end
