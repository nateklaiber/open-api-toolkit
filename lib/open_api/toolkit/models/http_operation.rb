module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the HTTP Operation object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::HttpOperation]
      class HttpOperation
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the operation
        #
        # @return [String]
        def name
          @attributes[:name]
        end

        # Returns the original attributes
        #
        # @return [Hash]
        def to_attributes
          @attributes
        end
      end
    end
  end
end
