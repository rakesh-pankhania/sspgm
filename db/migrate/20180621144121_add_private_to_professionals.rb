class AddPrivateToProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :private, :boolean, default: false, index: true
  end
end
