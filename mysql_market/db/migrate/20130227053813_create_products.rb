class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.integer :category_id
      t.timestamps
    end

    execute("ALTER TABLE products ENGINE=MYISAM;")

    execute("ALTER TABLE products ADD FULLTEXT(brand);")
    execute("ALTER TABLE products ADD FULLTEXT(name);")
    execute("ALTER TABLE products ADD FULLTEXT(description);")
  end
end
