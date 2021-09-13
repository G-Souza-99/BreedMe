class AddAddressToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :address, :string
  end
end
