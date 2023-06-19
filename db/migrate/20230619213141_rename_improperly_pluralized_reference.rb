class RenameImproperlyPluralizedReference < ActiveRecord::Migration[7.0]
  def change
    rename_column :teams, :trainers_id, :trainer_id
  end
end
