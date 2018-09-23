require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Tink < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: "https://api.tink.se/api/v1",
        authorize_url: "/auth",
        token_url: "/oauth/token"
      }

      uid { raw_info["id"] }

      info do
        prune!({
          "email" => raw_info["username"]
        })
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def raw_info
        @raw_info ||= access_token.get("/user", info_options).parsed || {}
      end

      private

      def prune!(hash)
        hash.delete_if do |_, value|
          prune!(value) if value.is_a?(Hash)
          value.nil? || (value.respond_to?(:empty?) && value.empty?)
        end
      end
    end
  end
end

OmniAuth.config.add_camelization "tink", "Tink"
