class Task < ApplicationRecord
    scope :recent_first, -> { order(created_at: :desc) }
      belongs_to :user

end
