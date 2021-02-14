class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.integer :g
      t.integer :pa
      t.integer :hr
      t.integer :r
      t.integer :rbi
      t.integer :sb
      t.string :bb
      t.string :k
      t.string :iso
      t.string :babip
      t.string :avg
      t.string :obp
      t.string :slg
      t.string :woba
      t.string :wrc
      t.float :ev
      t.float :bsr
      t.float :off
      t.float :def
      t.float :war
      t.integer :playerid

      t.timestamps
    end
  end
end
