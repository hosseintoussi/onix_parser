module OnixParser
  module Elements
    class Audience < Base
      attribute :audience_code_type, Types::String
      attribute :audience_code_type_name, Types::String
      attribute :audience_code_value, Types::String
    end
  end
end
