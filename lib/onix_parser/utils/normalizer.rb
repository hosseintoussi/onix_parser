require_relative "tags"

module OnixParser
  module Utils
    class Normalizer
      def self.call(hash)
        new.normalize(hash)
      end

      def normalize(hash)
        normalized_hash = {}
        hash.map do |k, v|
          normalized_key = underscore_lookup[k]
          normalized_hash[normalized_key] = v.kind_of?(Hash) ? normalize(v) : v
          if v.kind_of?(Array)
            normalized_hash[normalized_key] = v.collect do |obj|
              normalize(obj) if obj.kind_of?(Hash)
            end
          end
        end

        normalized_hash
      end

      private

      def underscore_lookup
        @underscore_lookup ||= Hash.new do |hash, key|
          word = key_lookup(key).to_s
          word.gsub!(/([A-Z\d]+)([A-Z][a-z])/, '\1_\2')
          word.gsub!(/([a-z\d])([A-Z])/, '\1_\2')
          word.tr!("-".freeze, "_".freeze)
          word.downcase!
          hash[key] = word.to_sym
        end
      end

      def key_lookup(key)
        Tags::MAPPINGS[key] ? Tags::MAPPINGS[key] : key
      end
    end
  end
end
