class Restaurant < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :bookings
  belongs_to :user

  mount_uploader :profile_photos, ProfilePhotosUploader
  
  # geocoded_by :full_street_address
  # after_validation :geocode


  # def full_street_address
  #   restaurant.street_number + '' + restaurant.street_name + '' + restaurant.city + '' + restaurant.country + '' + restaurant.postcode
  # end

end
