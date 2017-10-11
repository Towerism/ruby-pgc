class Dog
  attr_accessor :name, :age

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