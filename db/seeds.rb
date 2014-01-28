require_relative '../app/models/word'

module Parser
  def self.import
    File.open(filename=File.dirname(__FILE__) + "/./words.txt").each do |w|
      # word is stored with the new line character
      w = w.gsub(/\W/,'')
      puts w
      sorted_word = w.downcase.split("").sort.join
      Word.create!(word: w, sorted: sorted_word)
    end
  end
end

Parser.import
