module Imagga
  # 
  class CategorizationResult < BaseObject
    attr_accessor :categories, :image
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'categories' => :'categories',
        
        # 
        :'image' => :'image'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'categories' => :'Array<Category>',
        :'image' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'categories']
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end
      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
    end

  end
end
