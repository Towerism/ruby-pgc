lines = []
File.open('votes.txt') do |file|
  lines = file.readlines
end