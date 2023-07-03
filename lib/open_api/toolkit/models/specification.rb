module OpenApi
  module Toolkit
    module Models
      class Specification
        # Returns an instance of the OpenAPI Specification
        #
        # @param attributes [Hash]
        #
        # @return [OpenApi::Toolkit::Models::Specification]
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the OpenAPI version number
        #
        # @return [String]
        def openapi
          @attributes[:openapi]
        end

        # Returns the info attributes
        #
        # @return [Hash]
        def info_attributes
          Hash(@attributes.fetch(:info, {}))
        end
        alias information_attributes info_attributes

        # Returns the Information object
        #
        # @return [OpenApi::Toolkit::Models::Information]
        def info
          OpenApi::Toolkit::Models::Information.new(self.info_attributes)
        end
        alias information info

        # Returns the servers attributes
        #
        # @return [Array]
        def servers_attributes
          Array(@attributes.fetch(:servers, []))
        end

        # Returns the collection of the paths attributes
        #
        # @return [Array][
        def paths_attributes
          Array(@attributes.fetch(:paths, []))
        end

        # Returns the collection of the components attributes
        #
        # @return [Array]
        def components_attributes
          Array(@attributes.fetch(:components, []))
        end

        # Returns the collection of the tags attributes
        #
        # @return [Array]
        def tags_attributes
          Array(@attributes.fetch(:tags, []))
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
