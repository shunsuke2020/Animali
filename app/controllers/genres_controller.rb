class GenresController < ApplicationController
   
    def new
		@ganre = Ganre.new
	end

	def index
		@ganres = Ganre.all
		@ganre = Ganre.new
	end

	def create
		@ganre = Ganre.new(ganre_params)
		@ganre.save
		redirect_to ganres_path
	end

	def edit
		@ganre = Ganre.find(params[:id])
	end

	def update
		@ganre = Ganre.find(params[:id])
		@ganre.update(ganre_params)
		redirect_to gares_path
	end

	private
	def ganre_params
		params.require(:ganre).permit(:name)
	end

end
