class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.integer "uuid"
    	#same as :t.references :organization
    	#same as :t.references :address
    	#same as :t.references :title
    	t.string "permalink"
        t.column"opening hours",:string
      

      t.timestamps null: false
    end
    add_index("stores","organization_id")
    add_index("stores","address_id")
     add_index("stores","permalink")

  end
  	 def down
  	drop_table :stores
  end
end
