lines = []
File.open('votes.txt') do |file|
  lines = file.readlines
end

votes = {}

lines.each do |line|
  name = line.chomp
  votes[name] += 1
end

p votes