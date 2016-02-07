module Imagga
  # 
  class ColorsResult < BaseObject
    attr_accessor :image, :info
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'image' => :'image',
        
        # 
        :'info' => :'info'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'image' => :'String',
        :'info' => :'Info'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
      if attributes[:'info']
        self.info = attributes[:'info']
      end
      
    end

  end
end
