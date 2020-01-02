require_relative "code"

module OnixParser
  module Elements
    class Measure < Base
      attribute :measure_type, Code, list: "48"
      attribute :measurement, Types::String
      attribute :measure_unit_code, Code, list: "50"
    end
  end
end
