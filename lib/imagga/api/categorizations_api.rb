require "uri"

module Imagga
  class CategorizationsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Categorize a photo by its visual content
    # Analyze a photo and return a category describing it.
    # @param categorizer_id Categorizer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url url
    # @option opts [String] :content Content id received by uploading an image to the content endpoint
    # @return [CategorizationResponse]
    def categorize(categorizer_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CategorizationsApi#categorize ..."
      end
      
      # verify the required parameter 'categorizer_id' is set
      fail "Missing the required parameter 'categorizer_id' when calling categorize" if categorizer_id.nil?
      
      # resource path
      path = "/categorizations/{categorizer_id}".sub('{format}','json').sub('{' + 'categorizer_id' + '}', categorizer_id.to_s)

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
        :return_type => 'CategorizationResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CategorizationsApi#categorize. Result: #{result.inspect}"
      end
      return result
    end
  end
end




