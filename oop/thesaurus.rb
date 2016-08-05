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

class Thesaurus
  def initialize(word)
    @words = []
    @words << word
    @word = word[:word]
    @synonym = word[:synonym]
    @antonym = word[:antonym]
  end

  def find_synonym
    puts @synonym
  end

  def find_antonym
    puts @antonym
  end

  def all_words
    puts @words
  end
end

class Entry < Thesaurus
  
  def add_new_word(new_word)
    @words << new_word
  end

  def add_synonym(synonym)
  end

  def add_antonym(antonym)
  end

end

thesaurus = Entry.new(word: "happy", synonym: "joyful", antonym: "angry")

thesaurus.find_synonym
thesaurus.find_antonym

thesaurus.add_new_word({word: "sad"})

thesaurus.all_words