
require 'find'
require 'xezat/detectors'

module Xezat
  
  class Autoconf < Detector
    
    Detectors.register('autoconf', self)
    
    def get_components(root)
      Find.find(root) { |file|
        if /^configure\.(ac|in)$/ =~ File.basename(file)
          return ['autoconf', 'make']
        end
      }
      []
    end

  end
  
end