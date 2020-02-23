class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :user

  validates :theme, presence: true
  validates :name, presence: true
  validates :start_date_time, presence: true
  validates :end_date_time, presence: true
end
