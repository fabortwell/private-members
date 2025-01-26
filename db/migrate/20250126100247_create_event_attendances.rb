class CreateEventAttendances < ActiveRecord::Migration[8.0]
  def change
    create_table :event_attendances do |t|
      t.references :attendee, foreign_key: { to_table: :users }
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
