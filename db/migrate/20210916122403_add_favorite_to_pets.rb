class AddFavoriteToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :favorite, :boolean, default: false
  end
end
