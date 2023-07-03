module OpenApi
  module Toolkit
    module Models
      class Parameters
        include Enumerable

        # Returns an instance of the parameters collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::Parameters]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Implement enumerable
        def each(&block)
          internal_collection.each(&block)
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::Parameter.new(record) }
        end

      end
    end
  end
end
