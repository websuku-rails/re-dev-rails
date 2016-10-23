class UserProf < ApplicationRecord
  has_many :joins, dependent: :destroy
  mount_uploader :user_prof_img, ImageUploader
end
