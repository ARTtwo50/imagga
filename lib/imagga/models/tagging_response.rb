module Imagga
  # 
  class TaggingResponse < BaseObject
    attr_accessor :results, :unsuccessful
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'results' => :'results',
        
        # 
        :'unsuccessful' => :'unsuccessful'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'results' => :'Array<TaggingResult>',
        :'unsuccessful' => :'UnsuccessfulResult'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'results']
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end
      
      if attributes[:'unsuccessful']
        self.unsuccessful = attributes[:'unsuccessful']
      end
      
    end

  end
end
