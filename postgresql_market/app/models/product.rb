class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  def self.search(query)
    where("to_tsvector(name || ' ' || brand || ' ' || description) @@ to_tsquery(?)", query)
  end
end
