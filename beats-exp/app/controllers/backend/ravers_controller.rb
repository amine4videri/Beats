class Backend::RaversController < BackendController
	
	def index
		@ravers = Raver.all 
	end

	def show
		@raver = Raver.find(params[:id])
	end	

	def destroy
		@raver = Raver.find(params[:id])
		if @raver.destroy
			redirect_to backend_ravers_path ,notice: "Raver supprime"
		else
			redirect_to bakend_raver_controller(@raver), notice: "problem! raver n'a pas ete suprrime"
        end
	end 	
end
