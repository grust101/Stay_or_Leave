module BotsHelper
	def remove_retweets tweets
		tweets.select do |tweet|
			tweet.split[0] != "RT"
		end
	end

	def remove_link tweet
		link = match_link(tweet)
		tweet.gsub(/https:\/\/t.co\/[a-zA-Z0-9].+?(?=\W|$){8,10}/, "")
	end

	def match_link tweet
		link = tweet.match(/https:\/\/t.co\/[a-zA-Z0-9].+?(?=\W|$){8,10}/).to_s
	end
end
