require_relative "collection_identifier"
require_relative "collection_sequence"
require_relative "title_detail"
require_relative "code"

module OnixParser
  module Elements
    class Collection < Base
      attribute :collection_type, Code, list: "148"
      attribute :source_name, Types::String
      attribute :collection_identifier, Types::Collection, of: CollectionIdentifier
      attribute :collection_sequence, Types::Collection, of: CollectionSequence
      attribute :title_detail, Types::Collection, of: TitleDetail
    end
  end
end
