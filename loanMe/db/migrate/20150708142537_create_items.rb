class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :user_id
      t.string :name
      t.string :description
      t.string :url
      t.string :state

      t.timestamps null: false
    end
  end
end
