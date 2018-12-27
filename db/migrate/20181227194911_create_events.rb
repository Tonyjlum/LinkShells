class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :game_id
      t.string :location
      t.integer :max_player
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
