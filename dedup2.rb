public

def dedup_last_dup(arr)
	
	#check for duplicates
	
	
		#this returns the index of the first object for which this block is true starting with the last object
		#ensuring that the last dupe is the first to be found and guaranteed to be pushed to the final array. 
		arr.uniq.each do |ui|	
			arr.each_index do |oi|
			#prints two columns, first col. is index of either the unique element or the last of each duplicate in the array and the second col.
			# is the duplicate.
				puts "#{@arr.rindex {|element| element == @arr[oi]}}, #{@arr[oi]}"
			end
		end
		


	

end

array = []
var = array.dedup_last_dup([1,1,2,4,5,6,7,7])

