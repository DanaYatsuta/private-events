class CreateAttendeesAttendedEventsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :attendees, :attended_events
  end
end
