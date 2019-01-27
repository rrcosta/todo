class CreateMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :metrics do |t|
      t.string :controller_name
      t.string :action_name
      t.float :time_process
      t.float :view_runtime
      t.float :db_runtime

      t.timestamps
    end
  end
end
