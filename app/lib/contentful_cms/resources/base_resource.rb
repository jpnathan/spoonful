# frozen_string_literal: true

module ContentfulCms
  module Resources
    class BaseResource
      def initialize
        @client = Client.resources
      end

      protected

      attr_reader :client
    end
  end
end
