class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :age
      t.string :username
      t.string :profile_img, :default => "http://clipart-library.com/images/6Tp5ebz6c.png"

      t.timestamps
    end
  end
end
