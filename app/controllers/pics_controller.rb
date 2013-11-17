class PicsController < ApplicationController

	def index

		if params[:emotion].present?
		#filter by emotion
		@pics = Pic.where(:emotion => params[:emotion])

		else
		
		@pics = Pic.all

		end

	end

	def new

		@pic = Pic.new

	end

	def create

		@pic=Pic.create( pic_params )
		redirect_to pics_path

		#Validation code

#		if @pic.persisted?
#			redirect_to pics_path
#		else
#			render :new, :status => :unprocessable_entity
#		end

	end

	private

	def pic_params
		
		params.require(:pic).permit(:lesson, :emotion, :learned, :image)

	end


end
