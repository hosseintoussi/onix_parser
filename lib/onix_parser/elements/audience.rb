module OnixParser
  module Elements
    class Audience < Base
      attribute :audience_code_type, String
      attribute :audience_code_type_name, String
      attribute :audience_code_value, String
    end
  end
end
