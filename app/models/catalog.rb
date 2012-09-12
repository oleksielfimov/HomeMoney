# == Schema Information
#
# Table name: catalogs
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  price      :integer
#  account    :string(255)
#  date       :date
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Catalog < ActiveRecord::Base
  attr_accessible :name, :price, :date, :account

  
  validates :name,  :presence => true,
                    :length   => { :within => 2..50 }
  validates :price, :presence => true,
					:length   => { :maximum => 6 }
  validates :date,  :presence => true
					
  validates :account, :presence => true
end
