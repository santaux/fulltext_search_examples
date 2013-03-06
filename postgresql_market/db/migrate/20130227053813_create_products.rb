class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.integer :category_id
      t.timestamps
    end

    # Add indexes to postgres manually:
    execute %{
      CREATE INDEX name_idx ON products USING gin(to_tsvector('english', name));
      CREATE INDEX brand_idx ON products USING gin(to_tsvector('english', brand));
      CREATE INDEX description_idx ON products USING gin(to_tsvector('english', description));
    }
  end
end
