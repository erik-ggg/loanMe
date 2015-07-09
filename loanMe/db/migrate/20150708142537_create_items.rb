class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.url :url
      t.boolean :state

      t.timestamps null: false
    end
  end
end
