module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the Parameter Style object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::ParameterStyle]
      class ParameterStyle
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the parameter style
        #
        # @return [String]
        def name
          @attributes[:name]
        end

        # Returns the parameter location ids
        #
        # @return [Array]
        def parameter_locations_ids
          Array(@attributes.fetch(:parameter_locations_ids, []))
        end

        # Retrieves the parameter locations by ids
        #
        # @return [OpenApi::Toolkit::Models::ParameterLocations]
        def parameter_locations
          OpenApi::Toolkit::Models::ParameterLocations.list_by_ids(self.parameter_locations_ids)
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
