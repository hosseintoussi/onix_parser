module OnixParser
  module Elements
    class CollectionSequence < Base
      attribute :collection_sequence_type, String
      attribute :collection_sequence_type_name, String
      attribute :collection_sequence_number, String
    end
  end
end
