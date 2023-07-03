module OpenApi
  module Toolkit
    module Models
      class HttpMethods
        include Enumerable

        # Returns an instance of the http methods collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::HttpMethods]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Returns the base method types
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

        # Returns an instance of the method type objects
        #
        # @return [OpenApi::Toolkit::Models::HttpMethods]
        def self.records
          self.new(self.records_attributes)
        end

        # Retrieve an method by name (id)
        #
        # @return [OpenApi::Toolkit::Models::HttpMethod,NilClass]
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
        # @return [OpenApi::Toolkit::Models::HttpMethod,NilClass]
        def retrieve(name)
          self.find { |record| record.name.to_s == name.to_s }
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::HttpMethod.new(record) }
        end
      end
    end
  end
end
