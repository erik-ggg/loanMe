class CreateItemRequests < ActiveRecord::Migration
  def change
    create_table :item_requests do |t|
      t.integer :item_id      # el id del objeto(que referencia al dueño)
      t.integer :user_id      # el usuario que hace la peticion
      t.date :date_request
      t.date :estimated_return_date

      t.timestamps null: false
    end
  end
end
