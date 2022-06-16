require 'contentful'

module Contentful
    class Client
        def initialize
            @client = Contentful::Client.new(
                space: Settings.contentful.space_id,
                access_token: Settings.contentful.access_token,
                dynamic_entries: :auto
              )              
        end
    end
end