class CreateAttendingRides < ActiveRecord::Migration
  def change
    create_table :attending_rides do |t|
      t.integer :user_id
      t.integer :group_ride_id

      t.timestamps
    end
  end
end
