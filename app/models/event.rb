class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  #has_and_belongs_to_many :attendees, class_name: 'User', join_table: :attendees_events
  has_and_belongs_to_many :attendees, foreign_key: :attended_event_id, class_name: 'User', join_table: 'attended_events_attendees'
end
