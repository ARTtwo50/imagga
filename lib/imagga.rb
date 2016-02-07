# Common files
require 'imagga/api_client'
require 'imagga/api_error'
require 'imagga/version'
require 'imagga/configuration'

# Models
require 'imagga/models/base_object'
require 'imagga/models/unsuccessful_result'
require 'imagga/models/colors_result'
require 'imagga/models/croppings_result'
require 'imagga/models/tagging_response'
require 'imagga/models/tagging_result'
require 'imagga/models/categorization_result'
require 'imagga/models/categorization_response'
require 'imagga/models/uploads_response'
require 'imagga/models/croppings_response'
require 'imagga/models/generic_error_response'
require 'imagga/models/colors_response'
require 'imagga/models/uploaded'
require 'imagga/models/info'
require 'imagga/models/foreground_color'
require 'imagga/models/image_color'
require 'imagga/models/background_color'
require 'imagga/models/cropping'
require 'imagga/models/categorizers_list'
require 'imagga/models/category'
require 'imagga/models/tag'

# APIs
require 'imagga/api/categorizations_api'
require 'imagga/api/colors_api'
require 'imagga/api/tagging_api'
require 'imagga/api/croppings_api'
require 'imagga/api/content_api'

module Imagga
  class << self
    # Configure sdk using block.
    # Imagga.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
