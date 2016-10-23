class Event < ApplicationRecord
  has_many :joins, dependent: :destroy

  def joined_by? user_prof
    joins.where(user_prof_id: user_prof.id).exists?
  end
end
