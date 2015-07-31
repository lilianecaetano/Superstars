class ChangeProfile
	include PageObject

 	link(:linktoprofile, :href => '/#!/profile/')
   
    #First time login
    h3(:firstlogin, :text =>'Hello dear...')
    button(:completeprofile_btn, :text => 'Complete My Profile')  
    select_list(:firsttimeselectlist, :id => 'select_label_07E')
    button(:cancelbutton_btn, :class => 'md-warn md-hue-1 md-button md-default-theme')

   
    text_area(:aboutme_txta, :id => 'input_00N')
    button(:aboutmesave_btn, :text => 'Save')

	
    
    def first_time_login_open_profile 
    	sleep (4)
    	if firstlogin? then
    		self.completeprofile_btn
    		sleep (4)
    		#self.firsttimeselectlist = 'QA Analist'
    		self.cancelbutton_btn
    	else	
		self.linktoprofile
		sleep (2)
		self.cancelbutton_btn
    	end
    end

    def type_aboutme value
    	sleep (2)
    	self.aboutme_txta = value
		self.aboutmesave_btn
		sleep (2)
    	self.aboutme_txta
    	sleep (3)
    	self.aboutme_txta = nil
    	self.aboutmesave_btn

    end

end