# CREATE TABLE `tblFam_PankhaniaKaraman` (
#   `id` int(11) NOT NULL,
#   `firstName` varchar(50) NOT NULL,
#   `father` int(11) NOT NULL,
#   `grandfather` int(11) NOT NULL,
#   `picture` tinyint(1) NOT NULL,
#   PRIMARY KEY (`id`)
# ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

class CreateFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :family_members do |t|
      t.string     :external_id
      t.string     :first_name
      t.string     :last_name
      t.string     :father_id
      t.string     :grandfather_id
      t.string     :picture

      t.timestamps
    end
  end
end
