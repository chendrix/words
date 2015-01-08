require 'set'

class String
  def split_at(index)
    [ self[0, index], self[index..-1] || "" ]
  end
end

module Words
  Word = Struct.new(:word) do
    def subsequences
      s = Set.new
      return s if empty?

      tails + init.subsequences
    end

    def tails
      s = Set.new
      return s if empty?

      s.add(word) + tail.tails
    end

    def empty?
      word.empty?
    end

    def tail
      fail if empty?
      _, tail = word.split_at(1)

      Word.new(tail)
    end

    def init
      fail if empty?
      init, _ = word.split_at(word.length - 1)

      Word.new(init)
    end
  end
end
