require_relative '../../test_helper'

class VersionTest < Test::Unit::TestCase

	def test_version_must_be_defined  
		assert_not_nil PlaceholdIt::VERSION, 'Version is not defined!' 
	end 

end