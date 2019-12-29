require_relative "supplier"
require_relative "supply_contact"
require_relative "supplier_own_coding"
require_relative "returns_conditions"
require_relative "supply_date"
require_relative "new_supplier"
require_relative "price"

module OnixParser
  module Elements
    class SupplyDetail < Base
      attribute :supplier, Supplier
      attribute :product_availability, String
      attribute :supply_contact, Types::Collection, of: SupplyContact
      attribute :supplier_own_coding, Types::Collection, of: SupplierOwnCoding
      attribute :returns_conditions, Types::Collection, of: ReturnsConditions
      attribute :product_availability, String
      attribute :supply_date, Types::Collection, of: SupplyDate
      attribute :order_time, String
      attribute :new_supplier, NewSupplier
      attribute :price, Types::Collection, of: Price
    end
  end
end
