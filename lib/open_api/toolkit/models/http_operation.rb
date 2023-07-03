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

        # Returns the http method identifier
        #
        # @return [String]
        def http_method_id
          @attributes[:http_method_id]
        end

        # Returns the http method object
        #
        # @return [OpenApi::Toolkit::Models::HttpMethod,NilClass]
        def http_method
          OpenApi::Toolkit::Models::HttpMethods.retrieve(self.http_method_id)
        end

        # Returns true if there is an http method
        #
        # @return [Boolean]
        def http_method?
          !self.http_method.nil?
        end

        # Returns the specified operation id/name
        #
        # @return [String]
        def operation_id
          @attributes[:operation_id]
        end

        # Returns the summary of the operation
        #
        # @return [String]
        def summary
          @attributes[:summary]
        end

        # Returns the description of the operation
        #
        # @return [String]
        def description
          @attributes[:description]
        end

        # Returns true if deprecated
        #
        # @return [Boolean]
        def is_deprecated
          @attributes.fetch(:is_deprecated, false)
        end
        alias is_deprecated? is_deprecated
        alias deprecated? is_deprecated

        # Returns the external documentation attributes
        #
        # @return [Hash]
        def external_documentation_attributes
          Hash(@attributes.fetch(:external_documentation, {}))
        end

        # Returns the request body attributes
        #
        # @return [Array]
        def request_body_attributes
          Hash(@attributes.fetch(:request_body, {}))
        end

        # Returns the parameters attributes
        #
        # @return [Array]
        def parameters_attributes
          Array(@attributes.fetch(:parameters, []))
        end

        # Returns the servers attributes
        #
        # @return [Array]
        def servers_attributes
          Array(@attributes.fetch(:servers, []))
        end

        # Returns the security attributes
        #
        # @return [Array]
        def security_attributes
          Array(@attributes.fetch(:security, []))
        end

        # Returns the responses attributes
        #
        # @return [Array]
        def responses_attributes
          Array(@attributes.fetch(:responses, []))
        end

        # Returns the tags values
        #
        # @return [Array]
        def tags_values
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
