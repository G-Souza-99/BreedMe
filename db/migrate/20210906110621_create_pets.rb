class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.string :name
      t.string :sex
      t.text :description
      t.string :on_heat
      t.date :birthday
      t.integer :pedigree_number

      t.timestamps
    end
  end
end
