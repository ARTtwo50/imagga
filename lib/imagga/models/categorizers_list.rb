module Imagga
  # 
  class CategorizersList < BaseObject
    attr_accessor :id, :labels, :title
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'id' => :'id',
        
        # 
        :'labels' => :'labels',
        
        # 
        :'title' => :'title'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'String',
        :'labels' => :'Array<String>',
        :'title' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'labels']
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end
      
      if attributes[:'title']
        self.title = attributes[:'title']
      end
      
    end

  end
end
