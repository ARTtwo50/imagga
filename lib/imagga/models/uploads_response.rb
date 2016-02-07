module Imagga
  # 
  class UploadsResponse < BaseObject
    attr_accessor :status, :uploaded
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'status' => :'status',
        
        # 
        :'uploaded' => :'uploaded'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'status' => :'String',
        :'uploaded' => :'Array<Uploaded>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'uploaded']
        if (value = attributes[:'uploaded']).is_a?(Array)
          self.uploaded = value
        end
      end
      
    end

  end
end
