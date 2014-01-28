class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
    words_array = []
    anagram = word.downcase.split("").sort.join
    Word.find_all_by_sorted(anagram)
  end

end



