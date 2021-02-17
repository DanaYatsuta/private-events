class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  #has_and_belongs_to_many :events, foreign_key: :attendee_id, join_table: :attendees_events
  has_and_belongs_to_many :attended_events, foreign_key: :attendee_id, join_table: 'attended_events_attendees', class_name: 'Event'
end