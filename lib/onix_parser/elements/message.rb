require_relative "header"
require_relative "product"

module OnixParser
  module Elements
    class Message < Base
      attribute :header, Header
      attribute :product, Types::Collection, of: Product
    end
  end
end
