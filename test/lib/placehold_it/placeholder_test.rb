require_relative '../../test_helper'

class PlaceholderTest < Test::Unit::TestCase 

	#Test that class var @url of Placeholder object is not nil 
	def test_url_is_not_nil
		p = Placeholder.new 
		assert_not_nil p.instance_variable_get(:@url), 'The image url must be defined!'	
	end
	
	#Test that Placeholder.image_url returns anything 
	def test_image_url_not_nil 
		p = Placeholder.new 
		assert_not_nil p.image_url, 'The image url is not defined!'	
	end

	def test_image_url_not_false 
		placeholder = Placeholder.new 
		assert placeholder.image_url, 'Image url can`t be false!'				
	end

end