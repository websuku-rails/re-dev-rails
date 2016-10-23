class UserProf < ApplicationRecord
  has_and_belongs_to_many :events
  has_many :joins, dependent: :destroy
end
