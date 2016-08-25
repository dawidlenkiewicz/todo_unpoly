class Todo < ApplicationRecord
  scope :completed, ->{ where(completed: true) }
  scope :current, ->{ where(completed: false) }
end
