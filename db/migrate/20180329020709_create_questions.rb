class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :tune, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
