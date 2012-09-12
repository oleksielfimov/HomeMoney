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

require 'test_helper'

class CatalogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
