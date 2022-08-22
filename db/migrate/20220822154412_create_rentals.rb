class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :car, null: false, foreign_key: true
      t.string :beginning_date
      t.string :ending_date
      t.references :renter, null: false, foreign_key: { to_table: 'users' }
      t.integer :total_price
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
