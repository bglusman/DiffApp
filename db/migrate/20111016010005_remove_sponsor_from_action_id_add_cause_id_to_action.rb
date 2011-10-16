class RemoveSponsorFromActionIdAddCauseIdToAction < ActiveRecord::Migration
  def up
   add_column :actions, :cause_id, :integer
   remove_column :actions, :sponsor_id
  end

  def down
   add_column :actions, :sponsor_id, :integer
   remove_column :actions, :cause_id
  end
end
