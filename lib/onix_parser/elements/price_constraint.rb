require_relative "price_constraint_limit"
require_relative "code"

module OnixParser
  module Elements
    class PriceConstraint < Base
      attribute :price_constraint_type, Code, list: "230"
      attribute :price_constraint_status, Code, list: "146"
      attribute :price_constraint_limit,
        Types::Collection,
        of: PriceConstraintLimit
    end
  end
end
