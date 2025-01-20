class Review < ApplicationRecord
  belongs_to :user
  belongs_to :exotic_pet

  validates :comment, presence: true, length: { minimum: 10, maximum: 500 }
  validates :rating, presence: true, inclusion: { in: 1..5 }
end
