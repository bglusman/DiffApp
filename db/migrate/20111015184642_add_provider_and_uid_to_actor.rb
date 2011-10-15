class AddProviderAndUidToActor < ActiveRecord::Migration
  def change
    add_column :actors, :provider, :string
    add_column :actors, :uid, :string
  end
end
