require 'spec_helper'
require 'words/corpus'

module Words
  describe Corpus do
    describe '#word_with_max_subwords_in_corpus' do
      it 'throws a runtime error if the corpus is empty' do
        expect {
          Corpus.new([]).word_with_most_subwords_in_corpus
        }.to raise_error
      end

      it 'works' do
        words_list = %w(a aaaa aa aaa)

        expect(Corpus.new(words_list).word_with_most_subwords_in_corpus).to eq('aaaa')
      end
    end
  end
end
