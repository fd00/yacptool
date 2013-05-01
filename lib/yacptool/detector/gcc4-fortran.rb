
require 'yacptool/detectors'

module Yacptool
  
  class Gcc4Fortran < Detector
    
    Detectors.register('gcc4-fortran', self)
    
    def get_components(root)
      Find.find(root) { |file|
        if /.+\.(f|F|f77|F77|f90|F90)$/ =~ File.basename(file)
          return ['gcc4-fortran', 'gcc4-core', 'binutils']
        end
      }
      []
    end

  end
  
end