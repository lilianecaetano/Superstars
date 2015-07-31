Before do
  if ENV['BROWSER']
	   @browser = Watir::Browser.new ENV['BROWSER'].to_sym
   else
    @browser = Watir::Browser.new :firefox
  end
end

After do |scenario|
   if scenario.respond_to?('scenario_outline') then
        scenario = scenario.scenario_outline
   end
   if scenario.failed? then
  @browser.screenshot.save 'screenshot.png'
  embed 'screenshot.png', 'image/png'
   end
   @browser.close
end


After do
	@browser.quit
end