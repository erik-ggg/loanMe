class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :mail
      t.string :phonenumber
      t.string :password

      t.timestamps null: false
    end
  end
end
