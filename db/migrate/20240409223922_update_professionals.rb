class UpdateProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :twitter, :string
    add_column :professionals, :youtube, :string
  end
end
