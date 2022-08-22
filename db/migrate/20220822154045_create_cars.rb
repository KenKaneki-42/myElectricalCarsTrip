class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :autonomy
      t.string :brand
      t.string :model
      t.string :description
      t.references :owner, null: false, foreign_key: { to_table: 'users' }
      t.integer :daily_price

      t.timestamps
    end
  end
end
