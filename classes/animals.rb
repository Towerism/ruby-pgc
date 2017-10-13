class Animal
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
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
end

class Bird < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

whiskers = Cat.new
whiskers.name = 'Whiskers'
fido = Dog.new
fido.name = 'Fido'
polly = Bird.new
polly.name = 'Polly'

whiskers.talk
polly.talk
