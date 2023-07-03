module OpenApi
  module Toolkit
    module Models
      class Paths
        include Enumerable

        # Returns an instance of the paths collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::Paths]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Implement enumerable
        def each(&block)
          internal_collection.each(&block)
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::Path.new(record) }
        end

      end
    end
  end
end
