module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the Parameter object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::Parameter]
      class Parameter
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the parameter
        #
        # @return [String]
        def name
          @attributes[:name]
        end

        # Returns the description
        #
        # @return [String]
        def description
          @attributes[:description]
        end

        # Returns the parameter location id
        #
        # @return [String]
        def parameter_location_id
          @attributes[:parameter_location_id]
        end

        # Returns the parameter location object
        #
        # @return [OpenApi::Toolkit::Models::ParameterLocation,NilClass]
        def parameter_location
          OpenApi::Toolkit::Models::ParameterLocations.retrieve(self.parameter_location_id)
        end

        # Returns the parameter style id
        #
        # @return [string]
        def parameter_style_id
          @attributes[:parameter_style_id]
        end

        # Returns the parameter style object
        #
        # @return [OpenApi::Toolkit::Models::ParameterStype,NilClass]
        def parameter_style
          OpenApi::Toolkit::Models::ParameterStyles.retrieve(self.parameter_style_id)
        end

        # Returns true if this is required
        #
        # @return [Boolean]
        def is_required
          @attributes.fetch(:is_required, false)
        end
        alias is_required? is_required
        alias required? is_required

        # Returns the schema attributes
        #
        # @return [Hash]
        def schema_attributes
          Hash(@attributes.fetch(:schema, {}))
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
