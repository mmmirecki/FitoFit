class AddSecondAddressToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :second_address, :string
  end
end
