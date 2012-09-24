class Payment < ActiveRecord::Base

	
	
	attr_accessible :account, :ballance
	
	validates :account,		:presence => true,
							:length => { :maximum => 10 },
							:uniqueness => true
	validates :ballance,	:numericality => { :only_integer => true },
							:presence => true
								
						
end


