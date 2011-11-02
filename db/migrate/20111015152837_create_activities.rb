class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :name
      t.text :description
      t.integer :sponsor_id

      t.timestamps
    end
  end
end
