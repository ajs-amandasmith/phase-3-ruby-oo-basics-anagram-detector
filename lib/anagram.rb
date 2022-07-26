require 'pry'
class Anagram
  def initialize(word)
    @word = word
  end

  def match(array)
    empty_array = []
    sorted_word = @word.chars.sort
    array.map do |word|
      current_sorted_word = word.chars.sort
      # binding.pry
      if current_sorted_word == sorted_word
        empty_array << word
        # binding.pry
        # return empty_array
      end
    end
    return empty_array
    # binding.pry
  end
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
