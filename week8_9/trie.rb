require_relative 'node'

class Trie 
  def initialize
    @root = Node.new("*")
  end


  def add_word(word)
  letters = word.chars
  base = @root

  letters.each{|letter| base = add_character(letter, base.next)}
  base.word = true
  end

  def find_word(word)
    letters = word.chars
    base    = @root
    word_found = letters.all? { |letter| base = find_character(letter, base.next) }

    yield word_found if block_given?
    
    base ? base.word : false
  end

  def add_character(character, trie)
    trie.find {|n| n.value == character} || add_node(character, trie)
  end

  def find_character(character, trie)
    trie.find { |n| n.value == character }
  end

  def add_node(character, trie)
    Node.new(character).tap { |new_node| trie << new_node }
  end

  def include?(word)
    find_word(word){|found| return found  }
  end
end

a = Trie.new
a.add_word("cat")
a.add_word("cats")
 p a.find_word("ca")
p a.include?("ca")


