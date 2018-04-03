Game.create!(name: 'Pumpkin-the-Cat', difficulty: 42, description: 'HI')
Game.create!(name: 'Yay', difficulty: 3, description: 'yes')
Game.create!(name: 'Stuff', difficulty: 6, description: 'I do not know')
game = Game.create!(name: 'Disney Classics', difficulty: 1, description: 'A few tunes that Jason would like.')

tune_1 = Tune.create!(name: 'Part of your World', note_strings: %w[D4,8n E4,8n F4,4n F4,2n E4,8n F4,8n G4,4n G4,2n])
tune_2 = Tune.create!(name: 'A Whole New World', note_strings: %w[D5,4n C5,8n Eb5,4n D5,8n Bb5,4n F4,1n])
tune_3 = Tune.create!(name: 'Once Upon a Dream', note_strings: %w[F4,2n. E4,2n. F4,2n D4,4n E4,4n F4,4n D4,4n E4,2n G4,4n A5,2n F#4,4n G4,1n])

game.tunes << tune_1
game.tunes << tune_2
game.tunes << tune_3
