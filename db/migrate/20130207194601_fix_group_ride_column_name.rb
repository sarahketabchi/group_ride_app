class FixGroupRideColumnName < ActiveRecord::Migration
  def change
    rename_column :group_rides, :organizer, :organizer_id
  end
end
