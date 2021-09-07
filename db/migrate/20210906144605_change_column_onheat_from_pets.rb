class ChangeColumnOnheatFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :on_heat, :string
    add_column :pets, :on_heat, :boolean
  end
end
