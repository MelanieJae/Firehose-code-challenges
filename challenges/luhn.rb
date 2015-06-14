class CreditCardNumber

	def initialize(ccn)
		@digits = ccn
	end	

	def luhn_check
			
		#digit doubling loop
		#since the doubling starts with the rightmost digit
		#(or next to rightmost in an odd number array), the array indeces
		#and elements are scanned in the reverse order.
			
		@digits.reverse.each_index do |i|
			# last index of 16 dig. array is 15 so
			#to double every second digit, double only the odd digits 	
			if (i % 2) != 0
				newval = @digits[i] * 2
				@digits[i] = newval	
			#loop to check whether the doubled value is > 10 and
			# subtract 9 if it is... 	
				if @digits[i] >= 10
					newval = @digits[i] - 9
					@digits[i] = newval
				end
			end
		end
		puts @digits
		#adding all digits in the cc number together...
		@sum = 0	
		@digits.each do |digit|
			@sum = @sum + digit
		end
			
		# notifying user if card number is valid or invalid
		# if mod 10 = 0 it's valid otherwise it's invalid.
		puts @sum
		if @sum % 10 == 0
			puts "This is a valid credit card number"
		elsif @sum % 10 != 0
			puts "This is NOT a valid credit card number."
		end
	end	
end

ccnum = CreditCardNumber.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,4])
ccnum.luhn_check


