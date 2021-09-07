class ChangeColumnFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :type, :string
    add_column :pets, :pet_type, :string
  end
end
