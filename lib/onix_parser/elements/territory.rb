module OnixParser
  module Elements
    class Territory < Base
      attribute :countries_included, Types::String
      attribute :regions_included, Types::String
      attribute :countries_excluded, Types::String
      attribute :regions_excluded, Types::String
    end
  end
end
