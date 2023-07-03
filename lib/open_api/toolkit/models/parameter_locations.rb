module OpenApi
  module Toolkit
    module Models
      class ParameterLocations
        include Enumerable

        # Returns an instance of the parameter locations collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::ParameterLocations]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Returns the base method types
        #
        # @return [Array]
        def self.records_attributes
          [
            {
              :name        => 'path',
              :description => 'Used with path templating to expand'
            },
            {
              :name        => 'query',
              :description => 'Parameters appended to the URL'
            },
            {
              :name        => 'header',
              :description => 'Parameters in the HTTP Headers'
            },
            {
              :name        => 'cookie',
              :description => 'Parameters in the HTTP Cookie'
            },
          ]
        end

        # Returns an instance of the method type objects
        #
        # @return [OpenApi::Toolkit::Models::ParameterLocations]
        def self.records
          self.new(self.records_attributes)
        end

        # Retrieve an method by name (id)
        #
        # @return [OpenApi::Toolkit::Models::ParameterLocation,NilClass]
        def self.retrieve(name)
          set = self.records
          set.retrieve(name)
        end

        # Implement enumerable
        def each(&block)
          internal_collection.each(&block)
        end

        # Retrieve a record by name
        #
        # @param name [String]
        #
        # @return [OpenApi::Toolkit::Models::ParameterLocation,NilClass]
        def retrieve(name)
          self.find { |record| record.name.to_s == name.to_s }
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::ParameterLocation.new(record) }
        end
      end
    end
  end
end
