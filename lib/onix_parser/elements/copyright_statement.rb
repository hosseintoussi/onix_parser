require_relative "copyright_owner"
require_relative "code"

module OnixParser
  module Elements
    class CopyrightStatement < Base
      attribute :copyright_type, Code, list: "219"
      attribute :copyright_year, Types::Collection, of: Types::String
      attribute :copyright_owner, Types::Collection, of: CopyrightOwner
    end
  end
end
