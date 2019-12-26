module OnixParser
  module Elements
    class CollectionIdentifier < Base
      attribute :collection_id_type, String
      attribute :id_value, String
    end
  end
end
