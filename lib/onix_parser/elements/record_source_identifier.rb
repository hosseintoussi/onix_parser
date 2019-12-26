module OnixParser
  module Elements
    class RecordSourceIdentifier < Base
      attribute :record_source_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
