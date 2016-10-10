class Bot < ApplicationRecord
	def self.search_words words
		@responses = []
		CLIENT.search(words, lang: "en").take(100).each do |response|
			 @responses << response.text 
			end
		@responses	
	end
end
