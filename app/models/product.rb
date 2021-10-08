class Product < ApplicationRecord
    belongs_to :category, foreign_key: "category_id"
    belongs_to :store, foreign_key: "store_id"

    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end

end
