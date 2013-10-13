
require 'xezat/detector/automake'

class AutomakeTest < Test::Unit::TestCase

  include Xezat

  # ファイルの存在を検出できているか
  def test_get_components
    detector = Automake.new
    root_ok = {:S => File.expand_path(File.join(File.dirname(__FILE__), 'fixture', 'automake', 'ok'))}
    assert_equal(['automake'], detector.get_components(root_ok))
    root_ng = {:S => File.expand_path(File.join(File.dirname(__FILE__), 'fixture', 'automake', 'ng'))}
    assert_equal([], detector.get_components(root_ng))
  end

end
