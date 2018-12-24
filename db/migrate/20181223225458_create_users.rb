class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :age
      t.string :username
      t.string :profile_img, :default => "https://image.freepik.com/free-icon/github-character-silhouette_318-40485.jpg"

      t.timestamps
    end
  end
end
