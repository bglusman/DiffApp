class RemoveSponsorFromActivityIdAddCauseIdToActivity < ActiveRecord::Migration
  def up
   add_column :activities, :cause_id, :integer
   remove_column :activities, :sponsor_id
  end

  def down
   add_column :activities, :sponsor_id, :integer
   remove_column :activities, :cause_id
  end
end
