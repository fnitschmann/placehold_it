require 'placehold_it/version'
require 'placehold_it/placeholder'

module ActionView
	module Helpers
		module AssetTagHelper 

			def placeholder_image_tag(options = {})
				placeholder = Placeholder.new 
				image_url = placeholder.image_url(options)

				image_tag(image_url)

			end

		end
	end
end