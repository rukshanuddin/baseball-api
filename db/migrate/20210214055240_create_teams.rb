class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :Team
      t.integer :G
      t.integer :PA
      t.integer :HR
      t.integer :R
      t.integer :RBI
      t.integer :SB
      t.decimal :BB
      t.decimal :K
      t.float :AVG
      t.float :ISO
      t.float :OBP
      t.float :SLG
      t.float :wRC
      t.float :wOBA

      t.float :BABIP
      t.float :EV
      t.float :BsR
      t.float :FB
      t.float :Off
      t.float :Def
      t.float :WAR

      t.timestamps
    end
  end
end

# "Team": "White Sox",
# "G": 889,
# "PA": 2267,
# "HR": 96,
# "R": 306,
# "RBI": 294,
# "SB": 20,
# "BB": "7.9%",
# "K": "25.2%",
# "ISO": ".192",
# "BABIP": ".314",
# "AVG": ".261",
# "OBP": ".326",
# "SLG": ".453",
# "wOBA": ".334",
# "wRC+": 113,
# "EV": 88.7,
# "BsR": -0.5,
# "Off": 36,
# "Def": 2.5,
# "WAR": 13.6