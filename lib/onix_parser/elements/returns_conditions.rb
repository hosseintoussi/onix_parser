module OnixParser
  module Elements
    class ReturnsConditions < Base
      attribute :returns_code_type, Types::String
      attribute :returns_code_type_name, Types::String
      attribute :returns_code, Types::String
    end
  end
end
