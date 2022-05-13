require 'csv'
require_relative 'trie'

class Csvtree
  def initialize(a = Trie.new)
    @a = a
  end

  def fill_csv(array_of_words)
    CSV.open('../test.csv', 'wb') do |csv|
      csv << %w[id string]
      array_of_words.each_with_index { |word, index| csv << [index, word] }
    end
  end

  def read_csv
    strings = CSV.parse(File.read('../fill_words.csv'), headers: true).by_col[1]
    add_strings(strings)
  end

  def add_strings(strings)
    strings.each { |string| @a.add_word(string) }
  end
end

a = Trie.new

a.add_word('cat')
a.add_word('caps')
a.find_word('ca')
a.include?('cap')

b = Csvtree.new(a)
b.read_csv
array_of_words = a.list('ca')
b.fill_csv(array_of_words)
