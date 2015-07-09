class CreateItemRequests < ActiveRecord::Migration
  def change
    create_table :item_requests do |t|
      t.integer :item_id
      t.integer :user_id
      t.date :date_request
      t.date :estimated_return_date

      t.timestamps null: false
    end
  end
end
