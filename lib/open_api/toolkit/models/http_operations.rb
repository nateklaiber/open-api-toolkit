module OpenApi
  module Toolkit
    module Models
      class HttpOperations
        include Enumerable

        # Returns an instance of the http operations collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::HttpOperations]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Returns the base operation types
        #
        # @return [Array]
        def self.records_attributes
          [
            {
              :name => 'get'
            },
            {
              :name => 'put'
            },
            {
              :name => 'post'
            },
            {
              :name => 'delete'
            },
            {
              :name => 'options'
            },
            {
              :name => 'head'
            },
            {
              :name => 'patch'
            },
            {
              :name => 'trace'
            }
          ]
        end

        # Returns an instance of the operation type objects
        #
        # @return [OpenApi::Toolkit::Models::HttpOperations]
        def self.records
          self.new(self.records_attributes)
        end

        # Retrieve an operaiton by name (id)
        #
        # @return [OpenApi::Toolkit::Models::HttpOperations,NilClass]
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
        # @return [OpenApi::Toolkit::Models::HttpOperations,NilClass]
        def retrieve(name)
          self.find { |record| record.name.to_s == name.to_s }
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::HttpOperation.new(record) }
        end
      end
    end
  end
end
