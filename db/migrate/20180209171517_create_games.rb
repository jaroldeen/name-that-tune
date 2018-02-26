class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :difficulty
      t.string :description

      t.timestamps
    end
  end
end
