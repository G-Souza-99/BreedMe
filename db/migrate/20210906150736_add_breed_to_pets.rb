class AddBreedToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :breed, :string
  end
end
