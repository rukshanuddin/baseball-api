class CreateTeamStats < ActiveRecord::Migration[6.1]
  def change
    create_table :team_stats do |t|
      t.string :team_name
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
