class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.integer :max_players
      t.string :description
      t.string :logo

      t.timestamps
    end
  end
end
