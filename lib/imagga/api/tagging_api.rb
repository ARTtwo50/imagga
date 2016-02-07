require "uri"

module Imagga
  class TaggingApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Analyze an image and return keywords describing it
    # Analyze an image and return keywords describing it
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url url
    # @option opts [String] :content Content id received by uploading an image to the content endpoint
    # @return [TaggingResponse]
    def tagging(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: TaggingApi#tagging ..."
      end
      
      # resource path
      path = "/tagging".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'url'] = opts[:'url'] if opts[:'url']
      query_params[:'content'] = opts[:'content'] if opts[:'content']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['Default']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaggingResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: TaggingApi#tagging. Result: #{result.inspect}"
      end
      return result
    end
  end
end




