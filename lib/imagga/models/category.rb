module Imagga
  # 
  class Category < BaseObject
    attr_accessor :confidence, :name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'confidence' => :'confidence',
        
        # 
        :'name' => :'name'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'confidence' => :'Float',
        :'name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'confidence']
        self.confidence = attributes[:'confidence']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
    end

  end
end
