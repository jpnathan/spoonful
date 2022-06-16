module Contentful
    module Resources
        class Recipes < Base
            def list_recipes
                client.entries
            end
        end
    end
end