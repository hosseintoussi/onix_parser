module OnixParser
  module Elements
    class MarketDate < Base
      attribute :Market_date_role, Types::String
      attribute :date_format, Types::String
      attribute :date, Types::String
    end
  end
end
