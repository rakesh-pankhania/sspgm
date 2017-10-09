# CREATE TABLE `tblProfessionals` (
#   `id` int(11) NOT NULL,
#   `lastName` varchar(100) NOT NULL,
#   `firstName` varchar(100) NOT NULL,
#   `middleName` varchar(100) NOT NULL,
#   `gradDegree` varchar(200) NOT NULL,
#   `gradUni` varchar(200) NOT NULL,
#   `gradYear` varchar(50) NOT NULL,
#   `jobTitle` varchar(200) NOT NULL,
#   `jobCompany` varchar(200) NOT NULL,
#   `location` varchar(200) NOT NULL,
#   `tel` varchar(50) NOT NULL,
#   `mobile` varchar(50) NOT NULL,
#   `fax` varchar(50) NOT NULL,
#   `email` varchar(100) NOT NULL,
#   `website` varchar(100) NOT NULL,
#   `category` varchar(100) NOT NULL,
#   `picture` tinyint(1) NOT NULL,
#   `spec` varchar(100) NOT NULL,
#   PRIMARY KEY (`id`)
# ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

class CreateProfessionals < ActiveRecord::Migration[5.1]
  def change
    create_table :professionals do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :picture
      t.string :graduation_degree
      t.string :graduation_university
      t.string :graduation_year
      t.string :job_title
      t.string :job_company
      t.string :location
      t.string :telephone
      t.string :mobile
      t.string :fax
      t.string :email
      t.string :website
      t.string :category
      t.string :spec

      t.timestamps
    end
  end
end
