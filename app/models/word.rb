class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
    words_array = []
    anagram = word.downcase.split("").sort.join
    Word.find_all_by_sorted(anagram)

      # words_array << (w.word if anagram[0] == w.word[0]) && w.word.size == anagram.sizeend

    # words_array.select { |w| w.downcase.split('').sort == anagram }
  end

end



