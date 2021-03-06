require_relative "imprint_identifier"

module OnixParser
  module Elements
    class Imprint < Base
      attribute :imprint_identifier, Types::Collection, of: ImprintIdentifier
      attribute :imprint_name, Types::String
    end
  end
end
