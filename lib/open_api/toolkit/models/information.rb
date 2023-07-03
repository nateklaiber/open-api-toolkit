require 'uri'

module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the Information metadata object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::Information]
      class Information
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the version of the OpenAPI document
        #
        # @return [String]
        def version
          @attributes[:version]
        end

        # Returns the title of the API
        #
        # @return [String]
        def title
          @attributes[:title]
        end

        # Returns the description of the API
        #
        # @return [String]
        def description
          @attributes[:description]
        end

        # Returns a URL To the terms of service for the API
        #
        # @return [String]
        def terms_of_service_value
          @attributes[:terms_of_service]
        end

        # Returns the terms of service as URI
        #
        # @return [URI,NilClass]
        def terms_of_service
          begin
            URI(self.terms_of_service_value)
          rescue
            nil
          end
        end

        # Returns the contact information attributes
        #
        # @return [Hash]
        def contact_attributes
          Hash(@attributes.fetch(:contact, {}))
        end

        # Returns an instance of the contact object
        #
        # @return [OpenApi::Toolkit::Models::Contact]
        def contact
          OpenApi::Toolkit::Models::Contact.new(self.contact_attributes)
        end

        # Returns the license attributes
        #
        # @return [Hash]
        def license_attributes
          Hash(@attributes.fetch(:license, {}))
        end

        # Returns the logo attributes
        #
        # @return [Hash]
        def logo_attributes
          Hash(@attributes.fetch(:logo, {}))
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
