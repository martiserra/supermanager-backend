# Webscrapping Process that signs a user in the Supermanager website
# - returns: nil

class SignInProcess < WebscrappingProcess

	def initialize(web_session, user, password)
		super(web_session)
		@user = user
		@password = password
	end
	
	def execute
		agent = @web_session.agent

		agent.get('http://supermanager.acb.com') do |page|
			sign_in_form = page.form_with(:name => 'ident')
    	sign_in_form.usuario = @user
    	sign_in_form.clave = @password
  	  sign_in_form["control"] = '1'
  		result = agent.submit(sign_in_form)

			if !result.link_with(:href => /verequipos.php/).nil? then
				@process_result = ProcessResult.new
			else
				@process_result = ProcessResult.new(false, 'Credentials Error')
			end

		end
	
	end



end