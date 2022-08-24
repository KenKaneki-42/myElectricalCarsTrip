class ChangedColumunTypesToTextAndDate < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :beginning_date, :string
    remove_column :rentals, :ending_date, :string
    add_column :rentals, :beginning_date, :date
    add_column :rentals, :ending_date, :date
    change_column :rentals, :comment, :text
    change_column :cars, :description, :text
  end
end
