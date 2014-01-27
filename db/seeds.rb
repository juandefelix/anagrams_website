require_relative '../app/models/word'

module Parser
  def self.import
    File.open(filename=File.dirname(__FILE__) + "/./words.txt").each do |w|
      Word.create!(word: w)
    end
  end
end

Parser.import
