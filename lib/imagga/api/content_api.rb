require "uri"

module Imagga
  class ContentApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Upload an image file to the API and get content id for processing it using one of the other endpoint methods.
    # Upload an image file to the API and get content id for processing it using one of the other endpoint method.
    # @param image image
    # @param [Hash] opts the optional parameters
    # @return [UploadsResponse]
    def upload(image, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ContentApi#upload ..."
      end
      
      # verify the required parameter 'image' is set
      fail "Missing the required parameter 'image' when calling upload" if image.nil?
      
      # resource path
      path = "/content".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["image"] = image

      # http body (model)
      post_body = nil
      

      auth_names = ['Default']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UploadsResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: ContentApi#upload. Result: #{result.inspect}"
      end
      return result
    end
  end
end




