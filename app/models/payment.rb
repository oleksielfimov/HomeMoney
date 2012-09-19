class Payment < ActiveRecord::Base
	attr_accessible :account, :ballance
	
		validates :account, :presence => true,
							:length => { :maximum => 10 }
					
end
