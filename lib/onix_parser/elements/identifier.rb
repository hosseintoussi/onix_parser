require_relative "code"

module OnixParser
  module Elements
    class Identifier < Base
      ID_TYPE_POSTFIX = "_id_type".freeze

      def self.attributes_for(name, options = {})
        attribute name.concat(ID_TYPE_POSTFIX).to_sym,
          Code,
          list: options[:list]
        attribute :id_type_name,  Types::String
        attribute :id_value,  Types::String

        self
      end
    end
  end
end
