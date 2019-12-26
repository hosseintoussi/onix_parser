module OnixParser
  module Elements
    class Collection < Base
      attribute :collection_type, String
      attribute :source_name, String
      attribute :collection_identifier, Types::Collection, of: CollectionIdentifier
      attribute :collection_sequence, Types::Collection, of: CollectionSequence
    end
  end
end
