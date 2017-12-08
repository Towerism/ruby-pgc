class WordSplitter
  include Enumerable

  attr_accessor :string

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