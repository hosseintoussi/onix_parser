module OnixParser
  module Elements
    class Identifier < Base
      ID_TYPE_POSTFIX = "_id_type".freeze

      def self.attributes_for(name)
        attribute name.concat(ID_TYPE_POSTFIX).to_sym, String
        attribute :id_type_name, String
        attribute :id_value, String

        self
      end
    end
  end
end
