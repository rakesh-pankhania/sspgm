# CREATE TABLE `tblBusiness` (
#   `id` int(11) NOT NULL,
#   `name` varchar(200) NOT NULL,
#   `owner` varchar(200) NOT NULL,
#   `address` varchar(200) NOT NULL,
#   `city` varchar(100) NOT NULL,
#   `state` varchar(100) NOT NULL,
#   `zip` varchar(25) NOT NULL,
#   `country` varchar(50) NOT NULL,
#   `tel` varchar(50) NOT NULL,
#   `fax` varchar(50) NOT NULL,
#   `mobile` varchar(50) NOT NULL,
#   `website` varchar(100) NOT NULL,
#   `email` varchar(100) NOT NULL,
#   `category` varchar(100) NOT NULL,
#   `spec` varchar(100) NOT NULL,
#   PRIMARY KEY (`id`)
# ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :owner
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :tel
      t.string :fax
      t.string :mobile
      t.string :website
      t.string :email
      t.string :category
      t.string :spec

      t.timestamps
    end
  end
end
