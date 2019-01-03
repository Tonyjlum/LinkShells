class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :age
      t.string :username
      t.string :profile_img, :default => "https://i.ibb.co/d6mnS3b/Login.png"

      t.timestamps
    end
  end
end
