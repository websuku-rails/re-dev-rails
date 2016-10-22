class Join < ApplicationRecord
  belongs_to :user_prof
  belongs_to :event

  validates :user_prof, presence: true
  validates :user_id, uniqueness: { scope: :event_id }
  validates :event, presence: true
end
