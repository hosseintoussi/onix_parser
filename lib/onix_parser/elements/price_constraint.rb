require_relative "price_constraint_limit"

module OnixParser
  module Elements
    class PriceConstraint < Base
      attribute :price_constraint_type, String
      attribute :price_constraint_status, String
      attribute :price_constraint_limit,
        Types::Collection,
        of: PriceConstraintLimit
    end
  end
end
