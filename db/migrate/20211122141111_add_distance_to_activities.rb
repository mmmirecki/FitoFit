class AddDistanceToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :distance, :float
  end
end
