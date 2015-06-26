public


#leaves only nth or last dupe, whichever comes first
def dedup_nth_dup(arr, n)
	@arr = arr
	@dupcountarray = []
	#check for duplicates
	
	#loop that executes output of dupe depending on what n is
	# n = 1 (i.e. 1st dupe)
	if n == 1
		puts @arr.uniq
	end
	# if nth or last dupe (nth or last)
	# so n may be equal to last depending on the array
	# e.g. #[1,1,1,2,4,5,6,7,7], if n=3, the 3rd dupe of 1 (index = 2) is returned
	# but the 2nd dupe of 7 is returned b/c it's the last and it comes before the
	# 3rd dupe which does not exist
	
	if n!= 1
		if @arr.uniq.length != @arr.length
		
			#nth dupe
			
			@arr.uniq.each_index do |ui|	

				# dup counter array: each element is counter for number of instances of element ui in the unique array
				# that are present in the original array. 
				# e.g. 
				# original array = [1,1,1,2,4,5,6,7,7], index oi
				# array.uniq = [1,2,4,5,6,7], index ui
				# dupcounterarray = [3,1,1,1,1,2], index di

				@dupcountarray[ui] = 0
			end
				@arr.uniq.each_index do |ui|	
					@arr.each_index do |oi|
						if @arr[oi] == @arr.uniq[ui]
							until @dupcountarray[ui] > n do	
								@dupcountarray[ui] += 1
							end	
					#store/associate last counter element for each element of dupcountarray
					#interrupt loop when any counter array element reaches n and take note of index oi at that point
					# as the final index for the dupe I want?
					#finish incrementing counter array and for those uniq array elements whose counter doesn't go
					#above 1, spit those out as is with index and any counter >1 but less than n, take note of index
					# of that dupe and return that as the index for the dupe i want in the final array?	
						end	
					end
				end	
					
				
					@arr.each_index do |oi|
						@dupcountarray.each_index do |di|
							# prints two columns
							# first col. is index of either the element if it's unique in the original array
							# or the index of the nth or last dupe of a number in the array. 
							# second col. is the duplicated element.
							# doesn't always return "whichever comes first" if there are >n duplicates of one number
							# it still returns the last duplicate b/c of rindex

							 if di > 1
							  	puts "#{@arr.rindex { |x| x == @arr[oi]}}, #{@arr[oi]}"
							 end
						end
					end
				
			
		end
	end
end

array = []
array.dedup_nth_dup([1,1,1,2,4,5,6,7,7], 3)

