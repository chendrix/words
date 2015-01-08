require 'spec_helper'
require 'words/word'

module Words
  describe Word do
    describe '#subsequences' do
      it 'is an empty set for an empty string' do
        expect(Word.new('').subsequences).to eq(Set.new)
      end

      it 'is an empty set for an empty string' do
        expect(Word.new('a').subsequences).to eq(Set.new(['a']))
      end

      it 'should get all the subsequences of a word' do
        substrings = %w(abcd bcd cd d abc bc c ab b a)

        expect(Word.new('abcd').subsequences).to eq(Set.new(substrings))
      end
    end

    describe '#tails' do
      it 'is an empty set for an empty string' do
        expect(Word.new('').tails).to eq(Set.new)
      end

      it 'should get all the tails of a word' do
        substrings = %w(abcd bcd cd d)

        expect(Word.new('abcd').tails).to eq(Set.new(substrings))
      end
    end

    describe '#tail' do
      it 'gives a new word without the first letter' do
        expect {
          Word.new('').tail
        }.to raise_error
        expect(Word.new('a').tail).to eq Word.new('')
        expect(Word.new('abcd').tail).to eq Word.new('bcd')
      end
    end

    describe '#init' do
      it 'gives a new word without the last letter' do
        expect {
          Word.new('').init
        }.to raise_error
        expect(Word.new('a').init).to eq Word.new('')
        expect(Word.new('abcd').init).to eq Word.new('abc')
      end
    end
  end
end
