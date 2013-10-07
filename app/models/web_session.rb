# This object represents a session to the supermanager website for webscrapping purposes

class WebSession

	attr_reader :agent
	attr_writer :signed_in


	def initialize
    @agent = Mechanize.new { |agent|
      #agent.follow_meta_refresh = true
      agent.log = Logger.new(STDERR)
      agent.user_agent_alias = 'Mac Safari'
    }
    
    @signed_in = false
  end

  def signed_in?
  	@signed_in
  end

  	
end