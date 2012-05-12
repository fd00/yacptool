
require 'yacptool/yacptool'

module Yacptool

  class CygclassManager

    def initialize(command_path = '/usr/share/cygport/cygclass')
      @cygclasses = []
      if Dir.exists?(command_path)
        Dir.glob(command_path + '/*.cygclass') { |filename|
          @cygclasses << File.basename(filename, '.cygclass').intern
        }
      end
    end

    def exists?(cygclass)
      @cygclasses.include?(cygclass)
    end

  end

end