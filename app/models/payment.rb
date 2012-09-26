class Payment < ActiveRecord::Base

	attr_accessible :account, :ballance
	
	validates :account,		:presence => true,
							:length => { :maximum => 10 },
							:uniqueness => true
	validates :ballance,	:format => { :with => /^\d+??(?:\.\d{0,2})?$/ },
							:presence => true
								
						
end


