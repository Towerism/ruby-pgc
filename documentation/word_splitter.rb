# This class allows you to perform various operations
# on the words in a string.
class WordSplitter
  include Enumerable

  # The string to split into words.
  attr_accessor :string

  # Passes each word in the string to a block, one
  # at a ime
  def each
    string.split(' ').each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = 'one two three four'

p splitter.find_all { |word| word.include?('e') }
p splitter.reject { |word| word.include?('e') }
p splitter.map { |word| word.reverse }
p splitter.any? { |word| word.include?('r') }
p splitter.count
p splitter.first
p splitter.sort