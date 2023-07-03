module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the Parameter Location object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::ParameterLocation]
      class ParameterLocation
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the parameter location
        #
        # @return [String]
        def name
          @attributes[:name]
        end

        # Returns the description of the parameter location
        #
        # @return [String]
        def description
          @attributes[:description]
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
