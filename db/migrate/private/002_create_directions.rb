class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.integer :orig_id
      t.string :name

      t.timestamps
    end
  end
end
