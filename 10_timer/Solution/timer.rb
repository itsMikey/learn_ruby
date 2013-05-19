class Timer
	
	attr_accessor :seconds
	
	def initialize
	
	 @seconds = 0
     
     end

	def time_string
	
	timeHash = {
	'hours' => 0,
	'minNsec' => 0,
	'seconds' => 0 }
	
	
	timeHash['hours'] = @seconds/3600
	timeHash['minNsec'] = (@seconds%3600) 
	timeHash['seconds'] = timeHash['minNsec']%60

	sprintf("%02d:%02d:%02d", timeHash['hours'], timeHash['minNsec']/60 ,timeHash['seconds'] )

	end

end