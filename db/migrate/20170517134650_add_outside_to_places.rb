class AddOutsideToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :outside, :boolean
  end
end
