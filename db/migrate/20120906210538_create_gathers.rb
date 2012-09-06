class CreateGathers < ActiveRecord::Migration
  def change
    create_table :gathers do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.text :description
      t.string :time
      t.string :price
      t.string :location

      t.timestamps
    end
  end
end
