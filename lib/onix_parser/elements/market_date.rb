module OnixParser
  module Elements
    class MarketDate < Base
      attribute :Market_date_role, String
      attribute :date_format, String
      attribute :date, String
    end
  end
end
