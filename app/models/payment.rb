class Payment < ActiveRecord::Base
	has_and_belongs_to_many :operations
	
	attr_accessible :account, :ballance
	
	validates :account,		:presence => true,
							:length => { :maximum => 10 },
							:uniqueness => true
	validates :ballance,	:numericality => { :only_integer => true },
							:presence => true
											
						
end


