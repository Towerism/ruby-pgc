class Dog
  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ''
    @name = value
  end

  def age=(value)
    raise "An age of #{value} isn't valid!" if value < 0
    @age = value
  end

  def talk
    puts 'Bark!'
  end

  def move(destination)
    puts "Running to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

dog = Dog.new
dog.name = 'Daisy'
dog.age = 3
dog.report_age
dog.talk
dog.move('bed')