class CreateOrganizations < ActiveRecord::Migration
  def up
    create_table :organizations do |t|
    	
      t.column"title",:string
      t.string"descriptiom",:limit => 50
      t.string"type",:default => "", :null => false
      t.timestamps null: false
    
    end
   end
    
  def down
  	drop_table :organizations
  end
end
