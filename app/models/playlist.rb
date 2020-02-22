class Playlist < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :theme, presence: true
end
