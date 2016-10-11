class CreateJoinTablePersonProject < ActiveRecord::Migration[5.0]
  def change
    create_join_table :people, :projects do |t|
      t.index [:person_id, :project_id]
    end
  end
end
