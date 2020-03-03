class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :user
  has_one_attached :event_image

  validates :theme, presence: true
  validates :name, presence: true
  validates :start_date_time, presence: true
  validates :end_date_time, presence: true
  validates :event_image, attached: true
end
