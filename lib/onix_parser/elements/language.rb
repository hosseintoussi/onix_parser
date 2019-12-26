module OnixParser
  module Elements
    class Language < Base
      attribute :language_role, String
      attribute :language_code, String
      attribute :country_code, String
      attribute :region_code, String
      attribute :script_code, String
    end
  end
end
