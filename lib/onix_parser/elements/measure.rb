module OnixParser
  module Elements
    class Measure < Base
      attribute :measure_type, Types::String
      attribute :measurement, Types::String
      attribute :measure_unit_code, Types::String
    end
  end
end
