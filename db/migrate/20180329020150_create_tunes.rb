class CreateTunes < ActiveRecord::Migration[5.1]
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :notes, array: true

      t.timestamps
    end
  end
end
