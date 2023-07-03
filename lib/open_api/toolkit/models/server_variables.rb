module OpenApi
  module Toolkit
    module Models
      class ServerVariables
        include Enumerable

        # Returns an instance of the server variables collection
        #
        # @param collection [Array]
        #
        # @return [OpenApi::Toolkit::Models::ServerVariables]
        def initialize(collection=[])
          @collection = Array(collection)
        end

        # Implement enumerable
        def each(&block)
          internal_collection.each(&block)
        end

        # Returns the collection as template args
        #
        # @return [Array]
        def as_template
          hash = {}

          self.inject(hash) do |hsh,record|
            hsh[record.key_name] = record.default
            hsh
          end

          hash
        end

        private
        def internal_collection
          @collection.map { |record| OpenApi::Toolkit::Models::ServerVariable.new(record) }
        end

      end
    end
  end
end
