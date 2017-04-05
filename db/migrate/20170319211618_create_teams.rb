class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, unique: true, index: true
      t.text :description

      t.timestamps
    end
  end
end
