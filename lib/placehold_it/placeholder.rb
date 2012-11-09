class Placeholder 	

	def initialize
		@url = 'http://placehold.it/'	
	end
	
	def image_url(options = {})
		#Default values:
		width = '100'
		height = '100'  	
		#Options:  
		if !options.empty? 

			source = @url

			#Size: 
			if options.has_key?(:width) || options.has_key?(:height)
				if options.has_key?(:width) && options.has_key?(:height)
					width = options[:width]
					height = options[:height]
					source += "/#{width}x#{height}"

				elsif options.has_key?(:width) && !options.has_key?(:height)
					width = options[:width] 
					source += "/#{width}"

				elsif !options.has_key?(:width) && options.has_key?(:height)
					height = options[:height]
					source += "/#{height}"				
				end	
			else 	
				source += "/#{height}"
			end

			#Extension: 
			if options.has_key?(:ext)
				ext = options[:ext].downcase.to_s  
				if ['gif', 'jpeg', 'jpg', 'png'].include?(ext)
					source += ".#{ext}" 
				end
			end 

			#Text:
			if options.has_key?(:text)
				text = options[:text].to_s 
				source += "?text=#{text}"			
			end
  	 
			@image_url = source

		else 
			@image_url = @url+width+"x"+height
		end 	
	end 
	
end