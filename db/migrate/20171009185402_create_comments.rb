# CREATE TABLE `tblComments` (
#   `id` int(11) NOT NULL,
#   `firstName` varchar(50) NOT NULL,
#   `lastName` varchar(50) NOT NULL,
#   `email` varchar(50) NOT NULL,
#   `comment` text NOT NULL,
#   `dateAdded_txt` varchar(50) NOT NULL,
#   `country` varchar(50) NOT NULL,
#   PRIMARY KEY (`id`)
# ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.text    :comment
      t.string  :country

      t.timestamps
    end
  end
end
