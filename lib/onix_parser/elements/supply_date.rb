require_relative "code"

module OnixParser
  module Elements
    class SupplyDate < Base
      attribute :supply_date_role, Code, list: "166"
      attribute :date_format, Code, list: "55"
      attribute :date, Types::String
    end
  end
end
