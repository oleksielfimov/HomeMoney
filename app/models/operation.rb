class Operation < ActiveRecord::Base

	has_and_belongs_to_many :payments

DATE_FORMATS = [
	'%Y-%m-%d',
	'%d/%m/%Y',
	'%d.%m.%Y',
	'%d-%m-%Y',
	'%m/%d/%Y',
	'%d %b %Y',
	'%d %B %Y',
	'%b %d, %Y',
	'%B %d, %Y'
    ]
	
	after_save :find_acc
	after_save :update_acc
	
	def find_acc
		@acc_oper_ver = Operation.find(:last)
		@acc_paym_ver = Payment.find_by_account("#{acc_oper_ver.acct}")
		@purpose_minus = ['Доход']
		@purpose_plus = ['Расход']
		if @acc_oper_ver.purpose == @purpose_minus = ['Доход'] 
		
		a, b = roles.sort.first, member.roles.sort.first
    if a == b
      if principal
        principal <=> member.principal
      else
        1
      end
    elsif a
      a <=> b
    else
      1
    end
  end
  
  
  
		
		
		
	return true
	end
	
	def update_acc
	
	return true
	end
	
	
	
		
	attr_accessible :acct, :mark, :purpose, :date, :amount
				
end
