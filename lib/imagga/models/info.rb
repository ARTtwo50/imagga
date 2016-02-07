module Imagga
  # 
  class Info < BaseObject
    attr_accessor :background_colors, :color_percent_threshold, :color_variance, :foreground_colors, :image_colors, :object_percentage
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'background_colors' => :'background_colors',
        
        # 
        :'color_percent_threshold' => :'color_percent_threshold',
        
        # 
        :'color_variance' => :'color_variance',
        
        # 
        :'foreground_colors' => :'foreground_colors',
        
        # 
        :'image_colors' => :'image_colors',
        
        # 
        :'object_percentage' => :'object_percentage'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'background_colors' => :'Array<BackgroundColor>',
        :'color_percent_threshold' => :'Float',
        :'color_variance' => :'String',
        :'foreground_colors' => :'Array<ForegroundColor>',
        :'image_colors' => :'Array<ImageColor>',
        :'object_percentage' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'background_colors']
        if (value = attributes[:'background_colors']).is_a?(Array)
          self.background_colors = value
        end
      end
      
      if attributes[:'color_percent_threshold']
        self.color_percent_threshold = attributes[:'color_percent_threshold']
      end
      
      if attributes[:'color_variance']
        self.color_variance = attributes[:'color_variance']
      end
      
      if attributes[:'foreground_colors']
        if (value = attributes[:'foreground_colors']).is_a?(Array)
          self.foreground_colors = value
        end
      end
      
      if attributes[:'image_colors']
        if (value = attributes[:'image_colors']).is_a?(Array)
          self.image_colors = value
        end
      end
      
      if attributes[:'object_percentage']
        self.object_percentage = attributes[:'object_percentage']
      end
      
    end

  end
end
