class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  define_index do
    indexes created_at, :sortable => true
    indexes description
    indexes name
    indexes brand
    indexes category(:name), :as => :category, :sortable => true

    has updated_at
  end
end
