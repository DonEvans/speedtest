class ComputersController < ApplicationController
  def index
		@computer = Computers.find :all
  end

  def show
		@computer = Computers.find(params[:id])
  end

  def new
			@computer = Computers.new
  end

	def create
		@computer = Computers.new(params[:computers])
		if @computer.save
			redirect_to @computer                 #'computers#new'          
		else
			render :action => 'new'
		end
	end

  def edit
  end

end
