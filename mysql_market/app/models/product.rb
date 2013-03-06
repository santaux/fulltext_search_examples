class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  def self.search(query)
    query_array = [query, query, query]
    where("MATCH(brand) AGAINST (?) OR MATCH(name) AGAINST (?) OR MATCH(description) AGAINST (?)", *query_array)
  end
end
