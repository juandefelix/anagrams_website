class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(anagram)
    words_array = []
    anagram_array = anagram.downcase.split('').sort
    self.find_each do |w|
      w.word = w.word.gsub(/\W/,'')
      words_array << w.word if anagram_array.uniq.include?(w.word[0]) && w.word.size == anagram_array.size
    end

    words_array.select do |w|
      w.downcase.split('').sort == anagram_array
    end
  end

end
