class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :username
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
