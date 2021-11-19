class AddFirstAddressToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :first_address, :string
  end
end
