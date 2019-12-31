module OnixParser
  module Elements
    class CollectionIdentifier < Base
      attribute :collection_id_type, Types::String
      attribute :id_value, Types::String
    end
  end
end
