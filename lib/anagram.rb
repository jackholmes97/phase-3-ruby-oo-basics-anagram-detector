class Anagram 
    attr_reader :word
    # attr_accessor :list

    def initialize(word)
        @word = word
    end

    def match(list)
        anagrams = []
        wordArr = @word.chars
        list.map do |option|
            op_arr = option.chars
            if (op_arr.sort == wordArr.sort)
                return anagrams.push(option)
            end
        end
        anagrams
    end


end


