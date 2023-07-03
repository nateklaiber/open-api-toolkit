require 'uri'

module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the License object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::License]
      class License
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the license
        #
        # @return [String]
        def name
          @attributes[:name]
        end

        # Returns the URL value
        #
        # @return [String]
        def url_value
          @attributes[:url]
        end

        # Returns the url URI object
        #
        # @return [URI, NilClass]
        def url
          begin
            URI(self.url_value)
          rescue
            nil
          end
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
