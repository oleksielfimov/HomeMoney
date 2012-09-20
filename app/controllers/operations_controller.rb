class OperationsController < ApplicationController
	def new
	  @operation = Operation.new
	end
	def destroy
		@operation = Operation.find(params[:id])
		@operation.destroy
		sleep 1

		redirect_to :action => :index
	end
	def create
		
		@operation = Operation.new(params[:operation])
		if @operation.save
		redirect_to :action => :show, :id => @operation.id
			else
		render 'new'
			end
	end	
	def show
		@operation = Operation.find(params[:id])
	end
	def index
		@operations = Operation.all
	end
	def edit
		@operation = Operation.find(params[:id])
	end
	def update
		@operation = Operation.find(params[:id])
			if @operation.update_attributes(params[:operation])
		redirect_to :action => :show, :id => @operation.id
			else
		render 'edit'
			end
	end
			
end
