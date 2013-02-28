class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  xapit do
    text :name, :description, :brand
    field :category_id
    sortable :id, :created_at
  end
end
