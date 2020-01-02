require_relative "code"

module OnixParser
  module Elements
    class MarketDate < Base
      attribute :Market_date_role, Code, list: "163"
      attribute :date_format, Code, list: "55"
      attribute :date, Types::String
    end
  end
end
