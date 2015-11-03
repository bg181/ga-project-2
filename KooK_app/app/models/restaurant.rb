class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :bookings
  belongs_to :user

  mount_uploader :profile_photos, ProfilePhotosUploader

end
