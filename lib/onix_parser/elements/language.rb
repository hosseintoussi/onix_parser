require_relative "code"

module OnixParser
  module Elements
    class Language < Base
      attribute :language_role, Code, list: "22"
      attribute :language_code, Code, list: "74"
      attribute :country_code, Code, list: "91"
      attribute :region_code, Code, list: "49"
      attribute :script_code, Code, list: "121"
    end
  end
end
