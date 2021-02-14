class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :Team
      t.integer :PA
      t.integer :BB
      t.integer :K
      t.integer :AVG
      t.integer :OBP
      t.integer :SLG
      t.integer :wRC
      t.integer :ISO
      t.integer :BABIP
      t.integer :LD
      t.integer :GB
      t.integer :FB
      t.integer :Pull
      t.integer :Cent
      t.integer :Oppo

      t.timestamps
    end
  end
end
