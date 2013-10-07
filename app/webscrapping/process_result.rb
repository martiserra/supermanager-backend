class ProcessResult

	def initialize(ok=true, error=nil)
		@ok = ok
		@error = error
	end

	def ok?
		@ok
	end

end