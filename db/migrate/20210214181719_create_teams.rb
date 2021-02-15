class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :initials
      t.integer :teamID
      t.integer :wins
      t.integer :losses
      t.string :form
      t.integer :color
      t.string :leagueCode
      t.timestamps
    end
  end
end
