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

        # Implement enumerable
        def each(&block)
          internal_collection.each(&block)
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::HttpOperation.new(record) }
        end
      end
    end
  end
end
