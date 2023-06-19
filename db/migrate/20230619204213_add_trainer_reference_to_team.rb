class AddTrainerReferenceToTeam < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :trainers, null: false, foreign_key: true
  end
end
