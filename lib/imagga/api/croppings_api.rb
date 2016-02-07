require "uri"

module Imagga
  class CroppingsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Analyze an image and return the best coordinates for cropping it
    # Analyze an image and return the best coordinates for cropping it in a specific size
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url url
    # @option opts [String] :content Content id received by uploading an image to the content endpoint
    # @option opts [String] :resolution Resolution pair in the form (width)x(height) where &#39;x&#39; is just the small letter x.
    # @option opts [String] :no_scaling Whether to apply any scaling to the smart-cropping output results or not.
    # @return [CroppingsResponse]
    def croppings(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CroppingsApi#croppings ..."
      end
      
      # resource path
      path = "/croppings".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'url'] = opts[:'url'] if opts[:'url']
      query_params[:'content'] = opts[:'content'] if opts[:'content']
      query_params[:'resolution'] = opts[:'resolution'] if opts[:'resolution']
      query_params[:'no_scaling'] = opts[:'no_scaling'] if opts[:'no_scaling']

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
        :return_type => 'CroppingsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CroppingsApi#croppings. Result: #{result.inspect}"
      end
      return result
    end
  end
end




