class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :created_events,
           class_name: "Event",
           foreign_key: "creator_id"


  has_many :event_attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendances, source: :event

  def attending?(event)
    attended_events.include?(event)
  end
end
