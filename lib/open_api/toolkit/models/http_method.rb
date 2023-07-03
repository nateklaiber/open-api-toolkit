module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the HTTP Method object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::HttpMethod]
      class HttpMethod
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the method
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
