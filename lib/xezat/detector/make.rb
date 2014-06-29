
require 'xezat/detectors'

module Xezat
  
  class Make < Detector
    
    Detectors.register('make', self)
    
    def get_components(variables)
      Find.find(variables[:B]) { |file|
        if file.end_with?(File::SEPARATOR + 'Makefile') || file.end_with?(File::SEPARATOR + 'makefile')
          return ['make']
        end
      }
      cygport = File.join(variables[:top], variables[:cygportfile])
      File.foreach(cygport) { |line|
        if line.index('cygmake')
          return ['make']
        end
      }
      []
    end

  end
  
end
