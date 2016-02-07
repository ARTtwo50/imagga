module Imagga
  # 
  class CroppingsResult < BaseObject
    attr_accessor :croppings, :image
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'croppings' => :'croppings',
        
        # 
        :'image' => :'image'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'croppings' => :'Array<Cropping>',
        :'image' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'croppings']
        if (value = attributes[:'croppings']).is_a?(Array)
          self.croppings = value
        end
      end
      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
    end

  end
end
