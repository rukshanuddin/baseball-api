class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :Name
      t.string :Team
      t.integer :G
      t.integer :PA
      t.integer :HR
      t.integer :R
      t.integer :RBI
      t.integer :SB
      t.string :BB
      t.string :K
      t.string :ISO
      t.string :BABIP
      t.string :AVG
      t.string :OBP
      t.string :SLG
      t.string :wOBA
      t.string :wRC
      t.float :EV
      t.float :BsR
      t.float :Off
      t.float :Def
      t.float :WAR
      t.integer :playerid

      t.timestamps
    end
  end
end
