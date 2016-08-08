require 'rspec'
# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!
#  def initialize(word)
#     @words = []
#     @words << word
#     @word = word[:word]
#     @synonym = word[:synonym]
#     @antonym = word[:antonym]
#   end
#   def find_synonym
#     puts @synonym
#   end

#   def find_antonym
#     puts @antonym
#   end

#   def all_words
#     puts @words
#   end
# end
# class Entry < Thesaurus
#   def add_new_word(new_word)
#     @words << new_word
#   end
#   def add_synonym(synonym)
#   end
#   def add_antonym(antonym)
#   end
# end
# thesaurus = Entry.new([word: "happy", {synonym: "joyful"} {antonym: "angry"}])
# thesaurus.find_synonym
# thesaurus.find_antonym
# thesaurus.add_new_word({word: "sad"})
# thesaurus.all_words
class Thesaurus
  def initialize(input)
    @words = []
    @words << input[:word]
    @synonyms = []
    @synonyms << input[:synonym]
    @antonyms = []
    @antonyms << input[:antonym]
  end
  
  def add_new_word(word)
    @words << word
    return @words
  end

  def delete_word(word)
    @words.delete(word)
    return @words
  end

  def look_up_synonym(word)
    number = 0
    @words.length.times do
      if @words[number] == word
      return @synonyms[number] 
      break
      end
      number = number + 1
    end
  end

  def look_up_antonym(word)
    number = 0
    @words.length.times do
      if @words[number] == word
      return @antonyms[number] 
      break
      end
      number = number + 1
    end
  end
end

RSpec.describe Thesaurus do
  describe '#add_new_word' do
    it 'should return a word if given a word' do
      thesaurus = Thesaurus.new(word: "happy", synonym: "joyful")
      expect(thesaurus.add_new_word("basketball")).to eq(["happy", "basketball"])
    end
  end
  describe '#delete_word' do
    it 'should delete the word given' do
      thesaurus = Thesaurus.new(word: "happy")
      thesaurus.add_new_word("basketball")
      thesaurus.add_new_word("lazy")
      expect(thesaurus.delete_word("lazy")).to eq(["happy", "basketball"])
    end
  end
  describe '#look_up_synonym' do
    it 'should look up the synonym for given word' do
      thesaurus = Thesaurus.new(word: "happy", synonym: "joyful")
      thesaurus.add_new_word("basketball")
      expect(thesaurus.look_up_synonym("happy")).to eq("joyful")
    end
  end
  describe '#look_up_antonym' do
    it 'should look up the antonym for given word' do
      thesaurus = Thesaurus.new(word: "happy", synonym: "joyful", antonym: "sad")
      expect(thesaurus.look_up_antonym("happy")).to eq("sad")
    end
  end
end