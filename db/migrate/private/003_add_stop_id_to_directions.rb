class AddStopIdToDirections < ActiveRecord::Migration
  def change
    add_column :directions, :stop_id, :integer
  end
end
