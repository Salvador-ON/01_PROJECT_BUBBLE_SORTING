
def bubble_sort(item)

	for n in 1...item.length() do
		for k in 0...(item.length()-1) do

			if(item[k].to_i > item[k+1].to_i) then
				item[k],item[k+1] = item[k+1],item[k]
			end
		end	
	end

	return item.inspect

end


def bubble_sort_by (word_arr)
	for n in 1...word_arr.length() do
		for k in 0...(word_arr.length()-1) do

			if(word_arr[k].length() > word_arr[k+1].length()) then
				word_arr[k],word_arr[k+1] = word_arr[k+1],word_arr[k]
			end
		end	
	end


	return word_arr.inspect
end

puts bubble_sort(['3','2','1','6','5','2','10','0','-3'])

puts bubble_sort_by(["length","hi","hello","hey", "a","abc"])
