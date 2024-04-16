class AddPhotosToProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :photos_link, :string
  end
end
