class CreateItemLoans < ActiveRecord::Migration
  def change
    create_table :item_loans do |t|
      t.string :item_id
      t.string :user_id
      t.date :estimated_return_date

      t.timestamps null: false
    end
  end
end
