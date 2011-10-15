class CreateIncentives < ActiveRecord::Migration
  def change
    create_table :incentives do |t|
      t.text :name
      t.text :description
      t.integer :action_id
      t.integer :claimant_id
      t.integer :supporter_id
      t.integer :sponsor_id
      t.boolean :performed

      t.timestamps
    end
  end
end
