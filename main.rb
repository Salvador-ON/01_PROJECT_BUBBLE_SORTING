def bubble_sort(item)

  (1...(item.length())).each { 
    |n|
    (0...(item.length()-1)).each {
      |k|
      if(item[k].to_i > item[k+1].to_i) then
        item[k],item[k+1] = item[k+1],item[k]
      end
    }
  }	

  return item.inspect
end

def bubble_sort_by(item)

  (1...(item.length())).each { 
    |n|
    (0...(item.length()-1)).each {
      |k|
      if(item[k].length() > item[k+1].length()) then
        item[k],item[k+1] = item[k+1],item[k]
      end
    }
  }	

  return item.inspect
end

puts bubble_sort(['3','2','1','6','5','2','10','0','-3'])

puts bubble_sort_by(["length","hi","hello","hey", "a","abc"])
