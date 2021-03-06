require_relative "queue"
require_relative "alphabet"

module ParaMorse

  class LetterEncoder
    attr_reader :alphabet, :queue

    def initialize
      @alphabet = Alphabet.new
      @queue = Queue.new
    end

    def encode(queue)
      queue.dup.map! do |letter|
        alphabet.trans_morse[letter]
      end.pop
    end
  end

end
