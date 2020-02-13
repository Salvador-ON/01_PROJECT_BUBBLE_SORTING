def bubble_sort(item)
  raise ArgumentError if item[0].nil?

  (1..(item.length - 1)).each do
    (0..(item.length - 2)).each do |k|
      item[k], item[k + 1] = item[k + 1], item[k] if item[k].to_i > item[k + 1].to_i
    end
  end
  item = item
end

def bubble_sort_by(item)
  raise 'No block_given' unless block_given?

  sorting = false
  until sorting == true
    x = 0
    (0..(item.length - 2)).each do |k|
      if yield(item[k], item[k + 1]).positive?
        item[k], item[k + 1] = item[k + 1], item[k]
        x += 1
      end
    end
    sorting = true if x.zero?
  end
  item
end

puts bubble_sort(['3', '2', '1', '6', '5', '2', '10', '0', '-3'])

puts bubble_sort_by(%w[hello abc ki a helloworld]) { |left, right| left.length - right.length }
puts bubble_sort_by(%w[hello abc ki a helloworld]) { |left, right| right.length - left.length }
