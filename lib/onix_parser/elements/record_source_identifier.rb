require_relative "identifier"

module OnixParser
  module Elements
    class RecordSourceIdentifier < Identifier
      attributes_for "record_source", list: "44"
    end
  end
end
