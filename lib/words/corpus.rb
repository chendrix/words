require 'set'
require 'words/word'

module Words
  class Corpus
    def initialize(corpus_param)
      @corpus = Set.new(corpus_param)
    end

    def word_with_most_subwords_in_corpus
      raise 'Empty corpus' if corpus.empty?

      corpus.max_by(&num_containing_words)
    end

    def num_containing_words
      -> (word) {
        (corpus & Word.new(word).subsequences).length
      }
    end

    private

    attr_reader :corpus
  end
end
