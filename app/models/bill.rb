class Bill < ApplicationRecord

  validates :date, presence: true
  validate :date_cant_be_future

  private

  def date_cant_be_future
    if date.present? && date > Date.today
      errors.add(:date, "no puede ser una fecha futura")
    end
  end

end
