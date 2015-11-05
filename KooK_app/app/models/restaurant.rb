class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :bookings
  belongs_to :user

  mount_uploader :picture, PictureUploader
  mount_uploader :picture_2, PictureUploader

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

end
