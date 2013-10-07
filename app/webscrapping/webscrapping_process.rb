# Superclass for any webscrapping process
# - Contains a websession in which the process will be executed
# - provides a process_result once it has been finished

class WebscrappingProcess

	attr_reader :process_result

	def initialize (web_session)
		@web_session = web_session
		@process_result = ProcessResult.new(false)
	end
	
end