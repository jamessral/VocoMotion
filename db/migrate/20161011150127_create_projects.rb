class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.string :location
      t.string :time
      t.string :discipline

      t.timestamps
    end
  end
end
