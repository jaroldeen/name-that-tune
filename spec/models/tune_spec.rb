# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tune, type: :model do
  subject { build_stubbed(:tune, note_strings: note_strings) }

  describe '#notes' do
    context 'when the tune has an array of valid note_strings' do
      let(:note_strings) { %w[8n,C5 8n,D4 4n,E3] }

      it 'returns an array of Note objects having the expected pitches and durations' do
        expect(subject.notes.size).to eq(3)
        expect(subject.notes).to all be_a(Note)

        first_note = subject.notes.first
        second_note = subject.notes.second
        third_note = subject.notes.third

        expect(first_note.duration).to eq('8n')
        expect(first_note.pitch).to eq('C5')
        expect(second_note.duration).to eq('8n')
        expect(second_note.pitch).to eq('D4')
        expect(third_note.duration).to eq('4n')
        expect(third_note.pitch).to eq('E3')
      end
    end
  end
end
