class PaymentsController < ApplicationController
	def new
	  @payment = Payment.new
	end
	def destroy
		@payment = Payment.find(params[:id])
		@payment.destroy
		
		redirect_to :action => :index
	end
	def create
		
		@payment = Payment.new(params[:payment])
		if @payment.save
		redirect_to :action => :show, :id => @payment.id
			else
		render 'new'
			end
	end	
	def show
		@payment = Payment.find(params[:id])
	end
	def index
		@payments = Payment.all
	
		
	end
	def edit
		@payment = Payment.find(params[:id])
	end
	def update
		@payment = Payment.find(params[:id])
			if @payment.update_attributes(params[:payment])
		redirect_to :action => :show, :id => @payment.id
			else
		render 'edit'
			end
	end
	def trans
		@acc_from = Payment.find(params[:check1])
		@acc_to = params[:check2]
		
	end

end
