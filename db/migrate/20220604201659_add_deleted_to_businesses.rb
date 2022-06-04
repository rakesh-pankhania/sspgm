class AddDeletedToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :deleted, :boolean, default: false, index: true
  end
end
