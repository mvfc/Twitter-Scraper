require 'twitter'

stream = Twitter::Streaming::Client.new do |config|
	config.consumer_key = ""
	config.consumer_secret = ""
	config.access_token = ""
	config.access_token_secret = ""
end

keywords = ['#csgo', 'runskg']

stream.filter(track: keywords.join(",")) do |object|
	if object.is_a?(Twitter::Tweet)
		puts "#{object.user.screen_name} - #{object.text}"
		puts "----------------------------------"
	end
end
