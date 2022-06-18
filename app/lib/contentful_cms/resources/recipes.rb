# frozen_string_literal: true

module ContentfulCms
  module Resources
    class Recipes < BaseResource
      def list
        client.entries.items.map do |entry|
          next unless entry.content_type.id == 'recipe'

          {
            title: entry.fields[:title],
            id: entry.id,
            image_url: entry.fields[:photo].url,
          }
        end.select(&:present?)
      end

      def find(recipe_id:)
        content = client.entry(recipe_id).fields

        {
          title: content[:title],
          description: content[:description],
          image_url: content[:photo].url,
          tags: content[:tags]&.map(&:name),
          chef: content[:chef]&.name,
        }
      end
    end
  end
end
