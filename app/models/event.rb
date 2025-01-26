class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  has_many :event_attendances
  has_many :attendees, through: :event_attendances, source: :attendee

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true

  scope :past_events, -> { where("date < ?", Date.today) }
  scope :upcoming_events, -> { where("date >= ?", Date.today) }
end
