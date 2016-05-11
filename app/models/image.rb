class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  mount_uploader :image, ImageUploader
  scope :most_recent, -> { order(created_at: :desc).first }

end
