require_relative 'node'
 

class Trie 
  def initialize
    @root = Node.new("*")
  end


  def add_word(word)
    letters = word.chars
    base = @root
    letters.each{|letter| base = add_letter(letter, base.next) }
    
    base.word = true
  end

  def add_letter(character, trie)
    trie.find{|n| n.value ==character} || add_node(character, trie)
  end

  def add_node(character, trie)
    Node.new(character).tap{|new_node| trie << new_node}
  end

  def find_word(word)
    letters = word.chars
    base = @root

    found_word = letters.all?{|letter| base = find_character(letter, base.next)}

    yield found_word if block_given?

    base ? base.word : false
  end

  def find_words_with_prefix(word)
    letters = word.chars
    base = @root

    found_word = letters.all?{|letter| base = find_character(letter, base.next)}

    base
  end

  def find_character(character, trie)
    trie.find{|n| n.value == character}
  end

  def include?(word)
    find_word(word){|found| return found}
  end

  def list(prefix)
    stack        = []
    words        = []
    prefix_stack = []
    stack        << find_words_with_prefix(prefix) #"a"
    prefix_stack << prefix.chars.take(prefix.size-1) #"c"
    return [] unless stack.first
    until stack.empty?
      node = stack.pop
      prefix_stack.pop and next if node == :guard_node
      prefix_stack << node.value
      stack        << :guard_node
      words << prefix_stack.join if node.word
      node.next.each { |n| stack << n }
    end
    words
  end
end

a = Trie.new
p a.add_word("cat")
p a.add_word("caps")
p a.find_word("ca")
p a.include?("cap")
p a.list("ca")