require_relative "identifier"

module OnixParser
  module Elements
    class CopyrightOwnerIdentifier < Identifier
      attributes_for "copyright_owner", list: "44"
    end
  end
end
