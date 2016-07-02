class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
       t.integer "uuid"
    	#same as :t.references :store
        #same as :t.references :title
        	t.string "permalink"
         t.string"price_per_day",:limit => 50
         t.string"price_per_month",:limit => 50
         t.string"price_per_week",:default => "", :null => false
      
  t.timestamps null: false
    end
    add_index("spaces","organization_id")
    add_index("spaces","store_id")
     add_index("spaces","permalink")


  end
   def down
  	drop_table :spaces
  end
end
