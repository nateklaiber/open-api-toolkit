module OpenApi
  module Toolkit
    module Models
      # Returns an instance of the ServerVariable object
      #
      # @param attributes [Hash]
      #
      # @return [OpenApi::Toolkit::Models::ServerVariable]
      class ServerVariable
        def initialize(attributes={})
          @attributes = Hash(attributes)
        end

        # Returns the name of the variable
        #
        # This functions as an ID and must be unique
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

        # Returns the enum collection of strings
        #
        # @return [Array<String>]
        def enum
          Array(@attributes.fetch(:enum, []))
        end

        # Returns the symbolized key name
        #
        # @return [Symbol]
        def key_name
          self.name.to_s.to_sym
        end
        alias id key_name

        # Returns the default value for the variable
        #
        # @return [String]
        def default
          @attributes[:default]
        end

        # Return the record as a template value
        #
        # @return [Hash]
        def as_template
          hsh = {}
          hsh[self.key_name] = self.default

          hsh
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
