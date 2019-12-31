require_relative "copyright_owner"

module OnixParser
  module Elements
    class CopyrightStatement < Base
      attribute :copyright_type, Types::String
      attribute :copyright_year, Types::Collection, of: Types::String
      attribute :copyright_owner, Types::Collection, of: CopyrightOwner
    end
  end
end
