class ExoticPet < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  geocoded_by :address

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :image_url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
  after_validation :geocode, if: :will_save_change_to_address?

  def ratings
    sum = 0
      self.reviews.each do |review|
        sum += review.rating
      end
    if sum==0
      return 0
    else
      return sum / self.reviews.size
    end
  end
end
