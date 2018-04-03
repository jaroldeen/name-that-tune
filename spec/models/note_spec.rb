# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Note, type: :model do

  describe '#initialize' do
    context 'when given a valid note string' do
      let(:note_string) { 'E3,4n' }

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
      expect(Note.new('C3,2n').pitch).to eq('C3')
    end
  end

  describe '#duration' do
    it 'returns the duration of a note' do
      expect(Note.new('C3,2n').duration).to eq('2n')
    end
  end
end
