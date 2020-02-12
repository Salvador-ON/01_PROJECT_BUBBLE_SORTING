def bubble_sort(item)
  raise RuntimeError, 'empty argument' if item[0].nil?
  (1..(item.length - 1)).each do
    (0..(item.length - 2)).each do |k|
      item[k], item[k + 1] = item[k + 1], item[k] if item[k].to_i > item[k + 1].to_i
    end
  end
  item = item
end

def bubble_sort_by(item)
  raise RuntimeError, 'empty argument' if item[0].nil?
  (1..(item.length - 1)).each do
    (0..(item.length - 2)).each do |k|
      item[k], item[k + 1] = item[k + 1], item[k] if item[k].length > item[k + 1].length
    end
  end
  item = item
end

puts bubble_sort(['3', '2', '1', '6', '5', '2', '10', '0', '-3'])

puts bubble_sort_by(%w[])
