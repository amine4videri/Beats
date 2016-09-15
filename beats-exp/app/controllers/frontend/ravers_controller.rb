class Frontend::RaversController < FrontendController
    def index
    end

    def new
		@raver = Raver.new
		session[:email] = params[:email]
    end
   	
   	def create
   		raver = Raver.new(raver_params)
   		raver.email = session[:email]
   		if raver.save 
   			redirect_to backend_ravers_path
   		else
   			redirect_to root
   		end
   	end


private 
    def set_raver
	  	@raver = Raver.find(params[:id])
	  end	

  	def raver_params
  		params.require(:raver).permit(:email, :name , :surname , :town, :phone)
  	end
end
