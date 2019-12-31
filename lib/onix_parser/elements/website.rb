module OnixParser
  module Elements
    class Website < Base
      attribute :website_role, Types::String
      attribute :website_description, Types::String
      attribute :website_link, Types::String
    end
  end
end
