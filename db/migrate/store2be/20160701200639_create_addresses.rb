class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.integer "uuid"
    	#same as :t.references :organization
         t.column"street",:string
        	t.string "permalink" 
      t.integer"zip",:limit => 50
      t.string"city",:default => "", :null => false
       t.string"country",:default => "", :null => false

      t.timestamps null: false
    end
   add_index("addresses","uuid")
   add_index("addresses","permalink")

    
  end
  def down
  	drop_table :addresses
  end
end
