class Placeholder 	

	@url = nil 

	def initialize
		@url = 'http://placehold.it/'	
	end
	
	def image_url(options = {})
		#Default values:
		@image_url = nil  
		width = '100'
		height = '100'  	

		if !options.empty? 
			true 
		else 
			@image_url = @url+width+"x"+height
		end 	
		#@image_url
	end 
	
end