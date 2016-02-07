module Imagga
  # 
  class GenericErrorResponse < BaseObject
    attr_accessor :message, :status, :type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'message' => :'message',
        
        # 
        :'status' => :'status',
        
        # 
        :'type' => :'type'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'message' => :'String',
        :'status' => :'String',
        :'type' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
    end

  end
end
