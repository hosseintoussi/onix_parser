require_relative "code"

module OnixParser
  module Elements
    class Territory < Base
      attribute :countries_included, Code, list: "91"
      attribute :regions_included, Code, list: "49"
      attribute :countries_excluded, Code, list: "91"
      attribute :regions_excluded, Code, list: "49"
    end
  end
end
