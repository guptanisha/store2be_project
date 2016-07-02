class CreateStore2bes < ActiveRecord::Migration
  def change
    create_table :store2bes do |t|

      t.timestamps null: false
    end
  end
end
