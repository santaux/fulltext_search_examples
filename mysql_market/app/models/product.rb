class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  def self.search(query)
    where("MATCH(brand) AGAINST (?) OR MATCH(name) AGAINST (?) OR MATCH(description) AGAINST (?)", query, query, query)
  end
end
