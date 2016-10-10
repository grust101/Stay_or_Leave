class BotsController < ApplicationController
	include BotsHelper
	def home
		stayed_tweets = Bot.search_words("#WhyIStayed").uniq
		@unique_stayed_responses = remove_retweets(stayed_tweets).slice(0,10)
		left_tweets = Bot.search_words("#WhyILeft")
		@unique_left_responses = remove_retweets(left_tweets).slice(0,10)

	end
end
