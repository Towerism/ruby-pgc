class Array
  def my_find_all
    result = []
    each do |element|
      result << element if yield element
    end
    result
  end
end
