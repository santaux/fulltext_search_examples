class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  searchable do
    text :name, :description, :brand
    integer :category_id
    time :created_at
    time :updated_at
  end
end
