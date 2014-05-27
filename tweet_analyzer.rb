puts "Hello! Welcome to Tweet Analyzer!"

puts "Please enter 3 tweets:"

tweets = []
3.times do
	tweet = gets.strip

	tweets << tweet
end

words = tweets.map { |tweet| tweet.split }.flatten

counts = {}
words.each do |word|
	if !counts[word]
		counts[word] = 1
	else
		counts[word] += 1
	end
end

highest_word = ""
max = 0

counts.each do |word, count|
	if (count > max)
		max = count
		highest_word = word
	end
end

puts "THE MOST POPULAR WORD IS: #{highest_word}, WITH A COUNT OF: #{max}"

puts "COUNTS HASH IS: #{counts}"

puts "TWEETS ARRAY IS: #{tweets}"