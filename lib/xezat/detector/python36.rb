# frozen_string_literal: true

require 'find'

module Xezat
  module Detector
    class Python36
      def detect(variables)
        File.directory?(File.join(variables[:D], 'usr', 'lib', 'python3.6'))
      end
    end
  end
end
