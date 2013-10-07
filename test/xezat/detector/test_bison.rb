
require 'xezat/detector/flex'

class BisonTest < Test::Unit::TestCase

  include Xezat

  # ファイルの存在を検出できているか
  def test_get_components
    detector = Bison.new
    root_ok_y = File.expand_path(File.join(File.dirname(__FILE__), 'fixture', 'bison', 'ok_y'))
    assert_equal(['bison'], detector.get_components(root_ok_y))
    root_ok_ypp = File.expand_path(File.join(File.dirname(__FILE__), 'fixture', 'bison', 'ok_ypp'))
    assert_equal(['bison'], detector.get_components(root_ok_ypp))
    root_ng = File.expand_path(File.join(File.dirname(__FILE__), 'fixture', 'bison', 'ng'))
    assert_equal([], detector.get_components(root_ng))
  end

end