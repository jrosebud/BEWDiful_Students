class Place < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :image, PhotoUploader
end
