require 'spec_helper'

describe WebSession do
	
	it 'returns an Agent' do
		FactoryGirl.build(:web_session).agent.should_not be_nil
	end
	
	it 'returns a boolean telling whether the session has been signed in succesfully' do
		FactoryGirl.build(:web_session).signed_in?.should be_false
	end

	describe 'sign in' do
		before do
			@web_session = FactoryGirl.build(:web_session)
			@web_session.signed_in = true
		end

		it 'should have been signed in' do
			@web_session.signed_in?.should be_true	
		end
	end


end