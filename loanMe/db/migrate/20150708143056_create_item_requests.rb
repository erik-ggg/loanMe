class CreateItemRequests < ActiveRecord::Migration
  def change
    create_table :item_requests do |t|
      t.string :item_id
      t.string :user_id
      t.string :date_request
      t.string :estimated_return_date

      t.timestamps null: false
    end
  end
end
