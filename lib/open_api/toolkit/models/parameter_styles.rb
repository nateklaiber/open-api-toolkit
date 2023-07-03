module OpenApi
  module Toolkit
    module Models
      class ParameterStyles
        include Enumerable

        # Returns an instance of the parameter styles collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::ParameterStyles]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Returns the base method types
        #
        # @return [Array]
        def self.records_attributes
          [
            {
              :name                    => 'matrix',
              :parameter_locations_ids => ['path']
            },
            {
              :name                    => 'label',
              :parameter_locations_ids => ['path']
            },
            {
              :name                    => 'form',
              :parameter_locations_ids => ['query', 'cookie']
            },
            {
              :name                    => 'simple',
              :parameter_locations_ids => ['path', 'header']
            },
            {
              :name                    => 'space_delimited',
              :parameter_locations_ids => ['query']
            },
            {
              :name                    => 'pipe_delimited',
              :parameter_locations_ids => ['query']
            },
            {
              :name                    => 'deep_object',
              :parameter_locations_ids => ['query']
            },
          ]
        end

        # Returns an instance of the method type objects
        #
        # @return [OpenApi::Toolkit::Models::ParameterStyles]
        def self.records
          self.new(self.records_attributes)
        end

        # Retrieve an method by name (id)
        #
        # @return [OpenApi::Toolkit::Models::ParameterStyle,NilClass]
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
        # @return [OpenApi::Toolkit::Models::ParameterStyle,NilClass]
        def retrieve(name)
          self.find { |record| record.name.to_s == name.to_s }
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::ParameterStyle.new(record) }
        end
      end
    end
  end
end
