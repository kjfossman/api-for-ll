class Announcement < ApplicationRecord
    # Announcement.order(subject: :asc)
    scope :ordered_by_updated, -> { order(updated_at: :desc) }
    # scope :ordered_by_id, -> { order(id: :asc) }
end
