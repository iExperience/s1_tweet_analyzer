
# Greet user
def greet_user
	puts "Hello! Welcome to Tweet Analyzer!"
	puts "Please enter 3 tweets:"
end

# Collect tweets
def get_tweets(tweets)
	3.times do
		tweet = gets.strip
		tweets << tweet
	end
end

# Generate words

def calculate_counts(counts, tweets)
	words = tweets.map { |tweet| tweet.split }.flatten

	# Calculate counts	
	words.each do |word|
		if !counts[word]
			counts[word] = 1
		else
			counts[word] += 1
		end
	end
end

# Get highest word
def get_highest_word(counts)	
	highest_word = ""
	max = 0

	counts.each do |word, count|
		if (count > max)
			max = count
			highest_word = word
		end
	end

	highest_word
end

# Print results
def show_results(word)
	puts "THE MOST POPULAR WORD IS: #{word}"
end

# main.rb
greet_user

tweets = []
get_tweets(tweets)

counts = {}
calculate_counts(counts, tweets)

show_results(get_highest_word(counts))

