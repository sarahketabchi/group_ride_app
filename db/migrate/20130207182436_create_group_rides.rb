class CreateGroupRides < ActiveRecord::Migration
  def change
    create_table :group_rides do |t|
      t.string :title
      t.text :description
      t.integer :organizer

      t.timestamps
    end
  end
end
