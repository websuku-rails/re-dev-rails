class UserProf < ApplicationRecord
  has_many :joins, dependent: :destroy
  mount_uploader :iuser_prof_img, ImageUploader
end
