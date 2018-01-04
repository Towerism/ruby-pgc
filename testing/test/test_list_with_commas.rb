require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test
  def setup
    @list = ListWithCommas.new
  end

  def test_it_joins_two_words_with_and
    @list.items = ['apple', 'orange']
    assert_equal('apple and orange', @list.join)
  end

  def test_it_joins_three_words_with_commas
    @list.items = ['apples', 'orange', 'pear']
    assert_equal('apples, orange, and pear', @list.join)
  end

  def test_it_prints_one_word_alone
    @list.items = ['apple']
    assert_equal('apple', @list.join)
  end
end