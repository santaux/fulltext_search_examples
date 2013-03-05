class Product < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  belongs_to :category

  attr_accessible :name, :description, :brand, :category
end
