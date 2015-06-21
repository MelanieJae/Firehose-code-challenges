public

def dedup_last_dup(arr)
	@arr = arr
	#check for duplicates
	if @arr.uniq.length != @arr.length
	
		#this returns the index of the first object for which this block is true starting with the last object
		#ensuring that the last dupe is the first to be found and guaranteed to be pushed to the final array. 
		@arr.uniq.each do |element|	
			#prints two columns, first col. is index of either the unique element or the last of each duplicate in the array and the second col.
			# is the duplicate.
			puts "\n#{@arr.rindex {|ui| element == @arr[ui]}}, #{element}"
		end
		
	end

	

end

array = []
array.dedup_last_dup([1,1,2,4,5,6,7,7])

