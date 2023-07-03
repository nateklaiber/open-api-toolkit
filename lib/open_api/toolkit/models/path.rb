require 'uri_template'

module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the Path object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::Path]
      class Path
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the path
        #
        # @return [String]
        def path_value
          @attributes[:path]
        end

        # Returns the path as a uri template
        #
        # @return [URITemplate,NilClass]
        def path
          begin
            URITemplate.new(self.path_value)
          rescue
            nil
          end
        end

        # Returns the http methods attributes
        #
        # @return [Array]
        def http_methods_attributes
          Array(@attributes.fetch(:http_methods, []))
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
