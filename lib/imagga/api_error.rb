module Imagga
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        arg.each do |k, v|
          if k.to_s == 'message'
            super v
          else
            instance_variable_set "@#{k}", v
          end
        end
      else
        super arg
      end
    end
  end
end
