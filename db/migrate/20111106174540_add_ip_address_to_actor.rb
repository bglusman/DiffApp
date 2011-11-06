class AddIpAddressToActor < ActiveRecord::Migration
  def change
    add_column :actors, :ip_address, :string
  end
end
