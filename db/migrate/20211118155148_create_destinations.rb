class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.belongs_to :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
