public


#leaves only nth or last dupe, whichever comes first
def dedup_nth_dup(arr, n)
	@arr = arr
	#check for duplicates
	
	#loop that executes output of dupe depending on what n is
	# n = 1 (i.e. 1st dupe)
	if n == 1
		return array.uniq
	end
	# if nth or last dupe (nth or last)
	# so n may be equal to last depending on the array
	# e.g. #[1,1,1,2,4,5,6,7,7], if n=3, the 3rd dupe of 1 (index = 2) is returned
	# but the 2nd dupe of 7 is returned b/c it's the last and it comes before the
	# 3rd dupe which does not exist
	

		if @arr.uniq.length != @arr.length
		
			#nth dupe
			
			@arr.uniq.each_index do |ui|	

				# dup counter array: each element is counter for number of instances of element ui in the unique array
				# that are present in the original array 
				# e.g. 
				# original array = [1,1,1,2,4,5,6,7,7], index oi
				# array.uniq = [1,2,4,5,6,7], index ui
				# dupcounterarray = [3,1,1,1,1,2], index di

				@dupcountarray[ui] = 0
				@arr.each_index do |oi|
					if @arr[oi] == @arr.uniq[ui]
						@dupcountarray[ui] += 1
					end	

					@dupcountarray.each do |di|
									# prints two columns
									# first col. is index of either the element if it's unique in the original array
									# or the index of the nth or last dupe of a number in the array, whichever comes first
									# second col. is the duplicated element.


									if di >= n
										puts "#{oi}, #{@arr[oi]}"
									elsif di < n
										li = @arr.rindex {|ui| element == @arr[ui]}
										puts "#{li}, #{@arr[ui]}"
									end
								end
							end
						end
					end
		end
end

array = []
array.dedup_nth_dup([1,1,1,2,4,5,6,7,7], 3)

