require 'yao'
require 'yao/plugins'
require 'faraday'
require 'faraday_middleware'
require 'yao/faraday_middlewares'
require 'faraday_middleware/parse_oj'

module Yao::Plugins
  class OjClientGenerator
    def call(f, token)
      f.request :accept, 'application/json'
      f.request :url_encoded

      if token
        f.request :os_token, token
      end

      f.response :os_error_detector
      f.response :oj

      if Yao.config.debug
        f.response :logger
        f.response :os_dumper
      end

      if Yao.config.debug_record_response
        f.response :os_response_recorder
      end

      f.adapter Faraday.default_adapter
    end

    Yao::Plugins.register(self, type: :client_generator, name: :oj)
  end
end
