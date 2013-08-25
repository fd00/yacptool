
require 'xezat/readme'

class ReadmeTest < Test::Unit::TestCase
  
  include Xezat
  
  def test_valid_readme
    readme = Readme.new(<<EOL)
Port Notes:

----- version 0.2-1bl1 -----
Version bump.

----- version 0.1-1bl1 -----
Initial release.

EOL
    assert_equal('Initial release.', readme['0.1-1bl1'.intern])
    assert_equal('Version bump.',    readme['0.2-1bl1'.intern])
  end

  def test_invalid_readme_missing_port_notes
    assert_raise(ReadmeSyntaxException) {
      readme = Readme.new(<<EOL)

----- version 0.2-1bl1 -----
Version bump.

----- version 0.1-1bl1 -----
Initial release.

EOL
    }
  end

  def test_invalid_readme_missing_version
    assert_raise(ReadmeSyntaxException) {
      readme = Readme.new(<<EOL)

Version bump.

----- version 0.1-1bl1 -----
Initial release.

EOL
    }
  end

end