# frozen_string_literal: true

module ContentfulCms
  module Resources
    class Recipes < BaseResource
      def list_titles
        client.entries.items.map do |entry|
          { title: entry.fields[:title], id: entry.id } if entry.content_type.id == 'recipe'
        end.select(&:present?)
      end
    end
  end
end
