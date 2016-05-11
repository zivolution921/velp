class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :images
  mount_uploader :image, ImageUploader

  def user_image_url
    most_recent = images.most_recent.presence
    most_recent && most_recent.image_url
  end
end
