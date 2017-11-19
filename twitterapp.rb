require 'twitter'

stream = Twitter::Streaming::Client.new do |config|
	config.consumer_key = "h5keOX4XTupVGYgMj9ukua5I4"
	config.consumer_secret = "4djfoWX4LVCUeONQVX3aVRm5qrH6GI4iKjNorsS7s0FUtVdClz"
	config.access_token = "38533603-usi9EnlhzNaumOZ8FFfXGVh7gLNBUOOicwqjgIJBC"
	config.access_token_secret = "iUS3IHgMtmHHVVtMXG8pG0GACoj0cZgjBlHLy7iZl1OiP"
end

keywords = ['#csgo', 'runskg']

stream.filter(track: keywords.join(",")) do |object|
	if object.is_a?(Twitter::Tweet)
		puts "#{object.user.screen_name} - #{object.text}"
		puts "----------------------------------"
	end
end
