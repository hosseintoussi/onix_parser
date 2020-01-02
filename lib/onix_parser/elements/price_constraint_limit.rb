require_relative "code"

module OnixParser
  module Elements
    class PriceConstraintLimit < Base
      attribute :quantity, Types::String
      attribute :price_constraint_unit, Code, list: "147"
    end
  end
end
