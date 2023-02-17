class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      #Ex:- :null => false
      t.string :username, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
