require_relative "copyright_owner_identifier"

module OnixParser
  module Elements
    class CopyrightOwner < Base
      attribute :CopyrightOwnerIdentifier,
        Types::Collection,
        of: CopyrightOwnerIdentifier
      attribute :person_name, String
      attribute :corporate_name, String
    end
  end
end
