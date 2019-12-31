module OnixParser
  module Elements
    class Subject < Base
      attribute :main_subject, Types::String
      attribute :subject_scheme_identifier, Types::String
      attribute :subject_scheme_version, Types::String
      attribute :subject_code, Types::String
      attribute :subject_heading_text, Types::Collection, of: Types::String
    end
  end
end
