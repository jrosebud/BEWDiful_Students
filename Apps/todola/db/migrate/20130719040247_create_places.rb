class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.text :website
      t.text :photo
      t.time :open
      t.time :close
      t.time :open2
      t.time :close2

      t.timestamps
    end
  end
end
