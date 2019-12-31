require_relative "copyright_owner_identifier"

module OnixParser
  module Elements
    class CopyrightOwner < Base
      attribute :CopyrightOwnerIdentifier,
        Types::Collection,
        of: CopyrightOwnerIdentifier
      attribute :person_name, Types::String
      attribute :corporate_name, Types::String
    end
  end
end
