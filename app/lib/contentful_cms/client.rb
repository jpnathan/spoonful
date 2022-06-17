# frozen_string_literal: true

module ContentfulCms
  class Client
    def self.resources
      Contentful::Client.new(
        space: ENV['CONTENTFUL_SPACE_ID'],
        access_token: ENV['CONTENTFUL_TOKEN'],
        dynamic_entries: :auto,
      )
    end
  end
end
