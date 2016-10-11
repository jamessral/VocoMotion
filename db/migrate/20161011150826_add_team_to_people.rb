class AddTeamToPeople < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :team, foreign_key: true
  end
end
