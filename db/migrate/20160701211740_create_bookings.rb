class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|

    	t.integer "uuid"
    	#same as :t.references :organization
    	#same as :t.references :space
    	t.string "permalink"
        t.column"start_date",:string
        t.column"end_date",:string
        t.column"price",:string
        t.timestamps null: false
    end
    add_index("bookings","permalink")
  end
  	 def down
  	drop_table :bookings
  end
end

