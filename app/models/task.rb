class Task < ApplicationRecord
    scope :recent_first, -> { order(created_at: :desc) }

end
