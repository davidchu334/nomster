class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true ,length: { minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true
# Each unique field needs it's own line,
# but it can have multiple validations for the specific field.
end