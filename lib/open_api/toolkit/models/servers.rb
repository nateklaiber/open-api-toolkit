module OpenApi
  module Toolkit
    module Models
      class Servers
        include Enumerable

        # Returns an instance of the servers collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::Servers]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Implement enumerable
        def each(&block)
          internal_collection.each(&block)
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::Server.new(record) }
        end

      end
    end
  end
end
