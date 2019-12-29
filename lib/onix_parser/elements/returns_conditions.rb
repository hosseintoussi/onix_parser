module OnixParser
  module Elements
    class ReturnsConditions < Base
      attribute :returns_code_type, String
      attribute :returns_code_type_name, String
      attribute :returns_code, String
    end
  end
end
