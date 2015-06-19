class CreditCardNumber

	def initialize(ccn)
		@digits = []
		@digits << ccn.split('')
		@digits.each do |digit|
			digit.to_i 
		end
		puts @digits
	end	

	def luhn_check
			
		#digit doubling loop
		
		@dblarr = []
		@digits.each_index do |i|
			#create new array to put new values in after doubling every other digit
			
			if (i % 2) == 0				
				@dblarr << @digits[i] * 2
				#loop to check whether the doubled value is > 10 and
				# subtract 9 if it is... 	
				if (@digits[i] * 2) >= 10
					@dblarr[i] = (@digits[i] * 2) - 9
				end
			else
				@dblarr << @digits[i]	
			end	
			
		end
		
		
		#adding all digits in the cc number together...
		puts @dblarr
		sum = @dblarr.inject(:+) 
		return (sum % 10 == 0)
			
		# notifying user if card number is valid or invalid
		# if mod 10 = 0 it's valid and returns 'true'
		# otherwise it's invalid and returns 'false.
		
		
	end	

end

# require 'minitest/autorun'

# module Luhn
# 	def self.is_valid?(number)
# 		#IMPLEMENT ME
# 	end
# end

# class TestLuhn < MiniTest::Unit::TestCase

# 	def test_luhn_valid
# 		assert Luhn.is_valid?(4194560385008504)
# 	end

# 	def test_luhn_invalid
# 		assert ! Luhn.is_valid?(4194560385008505)
# 	end

# end

ccnum = CreditCardNumber.new("4194560385008504")
puts ccnum.luhn_check




