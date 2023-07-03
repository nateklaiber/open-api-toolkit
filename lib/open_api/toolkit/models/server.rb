require 'uri_template'

module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the Server object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::Server]
      class Server
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the URL value
        #
        # @return [String]
        def url_value
          @attributes[:url]
        end

        # Returns the url URI Template object
        #
        # @return [URI, NilClass]
        def url
          begin
            URITemplate.new(self.url_value)
          rescue
            nil
          end
        end

        # Returns the url expanded
        #
        # @return [String]
        def url_expanded(params={})
          self.url.expand(self.variables.as_template)
        end

        # Returns the description
        #
        # @return [String]
        def description
          @attributes[:description]
        end

        # Returns the server variables attributes
        #
        # @return [Array]
        def variables_attributes
          Array(@attributes.fetch(:variables, []))
        end

        # Returns an instance of the ServerVariables collection
        #
        # @return [OpenApi::Toolkit::Models::ServerVariables]
        def variables
          OpenApi::Toolkit::Models::ServerVariables.new(self.variables_attributes)
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
