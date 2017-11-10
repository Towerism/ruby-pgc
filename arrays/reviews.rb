review_file = File.open("reviews.txt")
lines = review_file.readlines
p lines
review_file.close