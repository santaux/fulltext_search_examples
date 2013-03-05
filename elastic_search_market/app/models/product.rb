class Product < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  belongs_to :category

  attr_accessible :name, :description, :brand, :category

  def self.search(params)
    tire.search(load: true) do
      query { string params[:query] }
    end
  end
end
