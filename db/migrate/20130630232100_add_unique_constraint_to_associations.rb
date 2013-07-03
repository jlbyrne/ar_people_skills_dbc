class AddUniqueConstraintToAssociations < ActiveRecord::Migration
  def change
    add_index :associations, [:user_id, :skill_id], :unique => true
  end
end