class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.belongs_to :team
      t.string :firstName
      t.string :lastName
      t.string :number
      t.string :country
      t.integer :teamID
      t.integer :weight
      t.string :position
      t.string :sport
      t.integer :playerID
      t.integer :height
      t.string :image
      t.string :videos
      t.timestamps
    end
  end
end
