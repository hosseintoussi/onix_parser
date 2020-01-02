require_relative "code"

module OnixParser
  module Elements
    class CollectionSequence < Base
      attribute :collection_sequence_type, Code, list: "179"
      attribute :collection_sequence_type_name, Types::String
      attribute :collection_sequence_number, Types::String
    end
  end
end
