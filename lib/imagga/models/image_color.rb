module Imagga
  # 
  class ImageColor < BaseObject
    attr_accessor :b, :closest_palette_color, :closest_palette_color_html_code, :closest_palette_color_parent, :closest_palette_distance, :g, :html_code, :percent, :r
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'b' => :'b',
        
        # 
        :'closest_palette_color' => :'closest_palette_color',
        
        # 
        :'closest_palette_color_html_code' => :'closest_palette_color_html_code',
        
        # 
        :'closest_palette_color_parent' => :'closest_palette_color_parent',
        
        # 
        :'closest_palette_distance' => :'closest_palette_distance',
        
        # 
        :'g' => :'g',
        
        # 
        :'html_code' => :'html_code',
        
        # 
        :'percent' => :'percent',
        
        # 
        :'r' => :'r'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'b' => :'String',
        :'closest_palette_color' => :'String',
        :'closest_palette_color_html_code' => :'String',
        :'closest_palette_color_parent' => :'String',
        :'closest_palette_distance' => :'Float',
        :'g' => :'String',
        :'html_code' => :'String',
        :'percent' => :'Float',
        :'r' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'b']
        self.b = attributes[:'b']
      end
      
      if attributes[:'closest_palette_color']
        self.closest_palette_color = attributes[:'closest_palette_color']
      end
      
      if attributes[:'closest_palette_color_html_code']
        self.closest_palette_color_html_code = attributes[:'closest_palette_color_html_code']
      end
      
      if attributes[:'closest_palette_color_parent']
        self.closest_palette_color_parent = attributes[:'closest_palette_color_parent']
      end
      
      if attributes[:'closest_palette_distance']
        self.closest_palette_distance = attributes[:'closest_palette_distance']
      end
      
      if attributes[:'g']
        self.g = attributes[:'g']
      end
      
      if attributes[:'html_code']
        self.html_code = attributes[:'html_code']
      end
      
      if attributes[:'percent']
        self.percent = attributes[:'percent']
      end
      
      if attributes[:'r']
        self.r = attributes[:'r']
      end
      
    end

  end
end
