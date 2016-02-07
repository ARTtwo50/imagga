require "uri"

module Imagga
  class ColorsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Analyze image and extract its dominant colors
    # Extract colors
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url url
    # @option opts [String] :content content
    # @option opts [String] :extract_overall_colors extract_overall_colors
    # @option opts [String] :extract_object_colors extract_object_colors
    # @return [ColorsResponse]
    def extract_colors(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ColorsApi#extract_colors ..."
      end
      
      # resource path
      path = "/colors".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'url'] = opts[:'url'] if opts[:'url']
      query_params[:'content'] = opts[:'content'] if opts[:'content']
      query_params[:'extract_overall_colors'] = opts[:'extract_overall_colors'] if opts[:'extract_overall_colors']
      query_params[:'extract_object_colors'] = opts[:'extract_object_colors'] if opts[:'extract_object_colors']

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
        :return_type => 'ColorsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: ColorsApi#extract_colors. Result: #{result.inspect}"
      end
      return result
    end
  end
end




