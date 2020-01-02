require_relative "code"

module OnixParser
  module Elements
    class ReturnsConditions < Base
      attribute :returns_code_type, Code, list: "53"
      attribute :returns_code_type_name, Types::String
      attribute :returns_code, Code, list: "204" # for US the list is 66
    end
  end
end
