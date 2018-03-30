require 'rails_helper'

RSpec.describe Note, type: :model do

  describe '#initialize' do
    context 'when given a valid note string' do
      let(:note_string) { '4n,E3' }

      it 'makes a new note object' do
        expect(Note.new(note_string)).to be_a(Note)
      end
    end

    context 'when given a invalid note string' do
      let(:note_string) { 'hi' }

      it 'raises an ArgumentError' do
        expect { Note.new(note_string) }.to raise_error(ArgumentError)
      end
    end

    context 'when given an invalid note string that contains a comma' do
      let(:note_string) { 'hi,' }

      it 'raises an ArgumentError' do
        expect { Note.new(note_string) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#pitch' do
    it 'returns the pitch of a note' do
      expect(Note.new('2n,C3').pitch).to eq('C3')
    end
  end

end
