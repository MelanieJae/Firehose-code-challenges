class Bed
	attr_accessor :mattress, :frame

	def initialize(mattress,frame)
		self.mattress = mattress
		self.frame = frame
	end

	def output
		puts "Your new bed is a #{@mattress} bed on a #{@frame} frame."
	end

end
bed = Bed.new('foam', 'platform')
bed.output
