class RenameTuneNotesToNoteStrings < ActiveRecord::Migration[5.1]
  def change
    rename_column :tunes, :notes, :note_strings
  end
end
