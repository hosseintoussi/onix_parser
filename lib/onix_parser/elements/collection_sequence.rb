module OnixParser
  module Elements
    class CollectionSequence < Base
      attribute :collection_sequence_type, Types::String
      attribute :collection_sequence_type_name, Types::String
      attribute :collection_sequence_number, Types::String
    end
  end
end
