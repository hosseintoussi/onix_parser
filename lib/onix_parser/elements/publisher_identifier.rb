module OnixParser
  module Elements
    class PublisherIdentifier < Base
      attribute :publisher_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
