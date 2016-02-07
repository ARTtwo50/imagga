module Imagga
  # 
  class Cropping < BaseObject
    attr_accessor :target_height, :target_width, :x1, :x2, :y1, :y2
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'target_height' => :'target_height',
        
        # 
        :'target_width' => :'target_width',
        
        # 
        :'x1' => :'x1',
        
        # 
        :'x2' => :'x2',
        
        # 
        :'y1' => :'y1',
        
        # 
        :'y2' => :'y2'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'target_height' => :'Integer',
        :'target_width' => :'Integer',
        :'x1' => :'Integer',
        :'x2' => :'Integer',
        :'y1' => :'Integer',
        :'y2' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'target_height']
        self.target_height = attributes[:'target_height']
      end
      
      if attributes[:'target_width']
        self.target_width = attributes[:'target_width']
      end
      
      if attributes[:'x1']
        self.x1 = attributes[:'x1']
      end
      
      if attributes[:'x2']
        self.x2 = attributes[:'x2']
      end
      
      if attributes[:'y1']
        self.y1 = attributes[:'y1']
      end
      
      if attributes[:'y2']
        self.y2 = attributes[:'y2']
      end
      
    end

  end
end
