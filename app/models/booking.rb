class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :exotic_pet

  validates :start_date, :end_date, :contact_email, :contact_phone, presence: true
  validates :contact_email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    if start_date && end_date && end_date <= start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
