class Place < ApplicationRecord
  mount_uploader :place_img, ImageUploader
end
