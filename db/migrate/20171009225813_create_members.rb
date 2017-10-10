# CREATE TABLE `tblDirectory` (
#   `id` int(11) NOT NULL,
#   `lastName` varchar(50) NOT NULL,
#   `firstName` varchar(50) NOT NULL,
#   `middleName` varchar(50) NOT NULL,
#   `spouse` varchar(50) NOT NULL,
#   `tel` varchar(100) NOT NULL,
#   `address` varchar(200) NOT NULL,
#   `city` varchar(100) NOT NULL,
#   `state` varchar(50) NOT NULL,
#   `zip` varchar(20) NOT NULL,
#   `country` varchar(50) NOT NULL,
#   `email` varchar(100) NOT NULL,
#   `children` varchar(200) NOT NULL,
#   `education` varchar(200) NOT NULL,
#   `profession` varchar(200) NOT NULL,
#   `dateAdded` date NOT NULL,
#   PRIMARY KEY (`id`)
# ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.string :spouse
      t.string :telephone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :email
      t.string :children
      t.string :education
      t.string :profession

      t.timestamps
    end
  end
end
