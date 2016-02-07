module Imagga
  # 
  class TaggingResult < BaseObject
    attr_accessor :image, :tags
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'image' => :'image',
        
        # 
        :'tags' => :'tags'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'image' => :'String',
        :'tags' => :'Array<Tag>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
      if attributes[:'tags']
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
      
    end

  end
end
