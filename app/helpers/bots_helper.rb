module BotsHelper
	def remove_retweets tweets
		tweets.select do |tweet|
			tweet.split[0] != "RT"
		end
	end
end
