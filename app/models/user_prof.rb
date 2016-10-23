class UserProf < ApplicationRecord
  has_many :joins, dependent: :destroy
end
