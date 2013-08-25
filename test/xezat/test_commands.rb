
require 'xezat/commands'

class CommandManagerTest < Test::Unit::TestCase
  
  include Xezat

  # 同じコマンドが定義された場合に例外を投げるか
  def test_multiple_command_definition_exception
    commands = CommandManager.new
    commands.register(:foo, self)
    assert_raise(MultipleCommandDefinitionException) {
      commands.register(:foo, self)
    }
  end

  # 定義されているコマンドが取得できるか
  def test_getting_defined_command
    commands = CommandManager.new
    commands.register(:foo, Object)
    assert_nothing_thrown() {
      commands.instance(:foo)
    }
  end

  # 定義されていないコマンドが取得された場合に例外を投げるか
  def test_getting_undefined_command
    commands = CommandManager.new
    commands.register(:foo, Object)
    assert_raise(NoSuchCommandDefinitionException) {
      commands.instance(:bar)
    }
  end

end