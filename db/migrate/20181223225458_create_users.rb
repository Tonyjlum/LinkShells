class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :age
      t.string :alias
      t.string :profile_img

      t.timestamps
    end
  end
end
