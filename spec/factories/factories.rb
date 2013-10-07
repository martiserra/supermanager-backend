FactoryGirl.define do
	factory :web_session do |f|
	end
end

FactoryGirl.define do
	factory :sign_in_process do |f|
		
		ignore do
			web_session FactoryGirl.build(:web_session)	
		end

		trait :valid do
			initialize_with { SignInProcess.new(web_session, 'supermanager.app', 'sm4n4g3r') }
		end

		trait :invalid do
			initialize_with { SignInProcess.new(web_session, 'testing', '81u5spfj') }
		end

	end
end