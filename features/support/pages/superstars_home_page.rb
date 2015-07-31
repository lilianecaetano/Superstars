class SuperstarsHomePage
	include PageObject


	page_url 'http://192.168.0.7:3030'
	#page_url 'http://superstars.avenuecode.com'

	button(:signinsstars_btn, :type => 'submit')

	text_field(:username_field, :id => 'Email')
	
	button(:nextgmail_btn, :id => 'next')

	text_field(:password_field, :id => 'Passwd')
	
	button(:signingmail_btn, :id => 'signIn')
   
    button(:authorize_btn, :id => 'submit_approve_access') 

    
    #user = YAML.load_file('config/properties.yml')
    #uts user['username']
    #pass = YAML.load_file('config/properties.yml')
    #puts pass['password']


	def do_login username, password
		self.signinsstars_btn
		self.username_field = username
		self.nextgmail_btn
		sleep (2)
		self.password_field = password
		self.signingmail_btn
	end
	
	def authorize_gmail
		sleep (2)
		if authorize_btn? 
			self.authorize_btn
		end
	end

	
end