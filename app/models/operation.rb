class Operation < ActiveRecord::Base


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
	before_destroy :find_acc_des

	def find_acc
	acc_oper_ver = Operation.find(:last) #можно так 
	acc_paym_ver = Payment.find_by_account("#{acc_oper_ver.acct}")
	a, b = Payment.find_by_account("#{acc_oper_ver.acct}").ballance, Operation.find(:last).amount
	if acc_oper_ver.purpose == '+'
	c = a.to_f + b.to_f
	Payment.where(:account => acc_oper_ver.acct).update_all(:ballance => c)
	else
	d = a.to_f - b.to_f
	Payment.where(:account => acc_oper_ver.acct).update_all(:ballance => d)

end
end	  
	def find_acc_des
	acc_oper_ver = Operation.find_by_id("#{id}") #а можно и так)
	if Payment.find_by_account("#{acc_oper_ver.acct}").nil? == false
	acc_paym_ver = Payment.find_by_account("#{acc_oper_ver.acct}")
	a, b = Payment.find_by_account("#{acc_oper_ver.acct}").ballance, acc_oper_ver.amount
	if acc_oper_ver.purpose == '+' 
	c = a.to_f - b.to_f
	Payment.where(:account => acc_oper_ver.acct).update_all(:ballance => c)
	else
	d = a.to_f + b.to_f
	Payment.where(:account => acc_oper_ver.acct).update_all(:ballance => d)
	end
	else
	Operation.find_by_acct("#{acct}").delete
	end
	end
	
	attr_accessible :acct, :mark, :purpose, :date, :amount
				
end
