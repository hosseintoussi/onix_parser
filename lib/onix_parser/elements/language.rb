module OnixParser
  module Elements
    class Language < Base
      attribute :language_role, Types::String
      attribute :language_code, Types::String
      attribute :country_code, Types::String
      attribute :region_code, Types::String
      attribute :script_code, Types::String
    end
  end
end
