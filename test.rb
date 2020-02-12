def bubble_sort(item)
	
	(1..(item.length())).each { 
		|n|
		(0..(item.length()-1)).each {
		|k|
		puts k
		}
      	}	
	
	return item.inspect
end

puts bubble_sort(['3','2','1','6','5','2','10','0','-3'])
