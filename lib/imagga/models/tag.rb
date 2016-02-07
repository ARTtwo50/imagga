module Imagga
  # 
  class Tag < BaseObject
    attr_accessor :confidence, :tag
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'confidence' => :'confidence',
        
        # 
        :'tag' => :'tag'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'confidence' => :'Float',
        :'tag' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'confidence']
        self.confidence = attributes[:'confidence']
      end
      
      if attributes[:'tag']
        self.tag = attributes[:'tag']
      end
      
    end

  end
end
