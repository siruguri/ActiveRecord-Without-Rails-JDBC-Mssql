class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :orig_id
      t.string :name

      t.timestamps
    end
  end
end
