require_relative "code"

module OnixParser
  module Elements
    class Website < Base
      attribute :website_role, Code, list: "73"
      attribute :website_description, Types::String
      attribute :website_link, Types::String
    end
  end
end
