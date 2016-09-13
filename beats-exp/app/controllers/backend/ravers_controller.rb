class Backend::RaversController < BackendController
	
	def index
		@ravers = Raver.all 
	end
end
