puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp

puts "Welcome, #{name}!"
print 'Enter max number: '
max_number = gets.to_i

puts "I've got a random number between 1 and #{max_number}"
puts 'Can you guess it?'
target = rand(max_number) + 1

num_guesses = 0

guessed_it = false

max_guesses = Math.log2(max_number).ceil
until num_guesses == max_guesses || guessed_it
  puts "You've got #{max_guesses - num_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i

  num_guesses += 1

  puts 'Oops. Your guess was LOW.' if guess < target
  puts 'Oops. Your guess was HIGH.' if guess > target
  guessed_it = true if guess == target
end

if guessed_it
  puts "Good job, #{name}!"
  puts "You guessed my number in #{num_guesses} guesses!"
else
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
