class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :user_name, null: false

      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :user_name, unique: true
  end
end
