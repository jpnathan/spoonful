module Contentful
  module Resources
    class Base
      extend T::Sig

      def initialize
        @client = Client.new
      end

      protected

      attr_reader :client
    end
  end
end
