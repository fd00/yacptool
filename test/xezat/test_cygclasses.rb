
require 'xezat/cygclasses'

class CygclassesTest < Test::Unit::TestCase
  
  include Xezat

  def setup
    here = File.dirname(__FILE__)
    @cygclasses = CygclassManager.new(File.join(here, 'fixture', 'cygclasses'))
  end

  # 存在している cygclass
  def test_existent_cygclass
    assert_equal(true, @cygclasses.exists?(:svn))
  end

  # 存在しない cygclass
  def test_nonexistent_cygclass
    assert_equal(false, @cygclasses.exists?(:nonexistent))
  end

end
