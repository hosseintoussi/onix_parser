module OnixParser
  module Elements
    class Territory < Base
      attribute :countries_included, String
      attribute :regions_included, String
      attribute :countries_excluded, String
      attribute :regions_excluded, String
    end
  end
end
