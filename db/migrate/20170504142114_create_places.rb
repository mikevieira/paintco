class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
     t.string :title
     t.date :date
     t.text :description 
     t.timestamps
    end
  end
end
