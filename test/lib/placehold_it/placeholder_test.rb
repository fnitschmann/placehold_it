require_relative '../../test_helper'

class PlaceholderTest < Test::Unit::TestCase 

	def test_url_is_not_nil
		p = Placeholder.new 
		assert_not_nil p.instance_variable_get(:@url), 'The image url must be defined!'	
	end
	
	def test_image_url_not_nil 
		p = Placeholder.new 
		assert_not_nil p.image_url, 'The image url is not defined!'	
	end

	def test_image_url_not_false 
		placeholder = Placeholder.new 
		assert placeholder.image_url, 'Image url can`t be false!'				
	end


	def test_url_must_cotain_width_and_height
		placeholder = Placeholder.new
		width = 300
		height = 180
		assert_match /#{width}x#{height}/, placeholder.image_url(:width => width, :height => height)
	end 

	def test_url_contains_single_width  
		placeholder = Placeholder.new 
		assert_match /300/, placeholder.image_url(:width => 300) 
	end

	def test_url_contains_single_height 
		placeholder = Placeholder.new 
		assert_match /300/, placeholder.image_url(:height => 300)	
	end

	def test_url_has_image_extension 
		placeholder = Placeholder.new
		assert_match /.png/, placeholder.image_url(:ext => 'png')
	end

	def test_url_contains_width_height_and_extension
		placeholder = Placeholder.new
		assert_match /300x180.png/, placeholder.image_url(:width => 300, :height => 180, :ext => 'png')
	end

	def test_url_has_text 
		placeholder = Placeholder.new
		assert_match /text=Hello World/, placeholder.image_url(:text => 'Hello World')
	end

end