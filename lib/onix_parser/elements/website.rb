module OnixParser
  module Elements
    class Website < Base
      attribute :website_role, String
      attribute :website_description, String
      attribute :website_link, String
    end
  end
end
