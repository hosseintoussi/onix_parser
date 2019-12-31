module OnixParser
  module Elements
    class PublisherIdentifier < Base
      attribute :publisher_id_type, Types::String
      attribute :id_type_name, Types::String
      attribute :id_value, Types::String
    end
  end
end
