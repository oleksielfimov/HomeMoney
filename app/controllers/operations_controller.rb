class OperationsController < ApplicationController
	def new
	  @operation = Operation.new
	  @purpose_lookup = ['Доход', 'Расход']
	  end
	def destroy

		@operation = Operation.find(params[:id])
		@operation.delete
		sleep 1

		redirect_to :action => :index
	end
	def create
		@purpose_lookup = ['Доход', 'Расход']
		@operation = Operation.new(params[:operation])
		if @operation.save
		
		redirect_to :action => :show, :id => @operation.id
			else
		render 'new'
			end
	end	
	def show
		@purpose_lookup = ['Доход', 'Расход']
		@operation = Operation.find(params[:id])
	end
	def index
		
		@operations = Operation.all
	end
	def edit
		@purpose_lookup = ['Доход', 'Расход']
		@operation = Operation.find(params[:id])
	end
	def update
		@purpose_lookup = ['Доход', 'Расход']
		@operation = Operation.find(params[:id])
			if @operation.update_attributes(params[:operation])
		redirect_to :action => :show, :id => @operation.id
			else
		render 'edit'
			end
	end

end
