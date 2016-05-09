public

def dedup(array)
	final = []
	seen = Set.new
	array.each do |element|
		if not seen.contains element then
			final << element
		end
		seen.add element
	
	end
	return final
end

arr = []
puts arr.dedup([0,1,1,3])