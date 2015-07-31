class ChangeProfile
	include PageObject

 	link(:linktoprofile, :href => '/#!/profile/')
   
    #First time login
    h3(:firstlogin, :text =>'Hello dear...')
    button(:completeprofile_btn, :text => 'Complete My Profile')  
    select_list(:firsttimeselectlist, :id => 'select_label_07E')
    button(:cancelbutton_btn, :class => 'md-warn md-hue-1 md-button md-default-theme')

   
    text_area(:aboutme_txta, :id => 'input_00N')
    button(:aboutmesave_btn, :class => 'md-primary md-hue-1 md-button md-default-theme ng-click-active')

	
    
    def first_time_login_open_profile 
    	sleep (4)
    	#if firstlogin? then
    		self.completeprofile_btn
    		sleep (4)
    		#self.firsttimeselectlist = 'QA Analist'
    	#end
    	#else

    	self.cancelbutton_btn
		#self.linktoprofile.click
    	#end
    end

    def type_aboutme value
    	sleep (2)
    	aboutme_txta
    	sleep (2)
    	binding.pry
    	aboutme_txta = value
		aboutmesave_btn
		sleep (2)
    	#aboutme_txta.click
    	aboutme_txta = nil
    	aboutmesave_btn

    end

end