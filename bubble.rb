def bubble_sort(myarray)
  n = myarray.length
  loop do
swapped = false
    (n - 1).times do |i|
    if myarray[i] > myarray[i + 1]
      myarray[i], myarray[i + 1] = myarray[i + 1], myarray[i]
      swapped = true
    end
    end
    break unless !swapped
  end
  myarray
end
a = [1, 4, 6, 2, 1, 9, 8, 3]
p bubble_sort(a)

def bubble_sort_by(arr)
  swap_test = true
  (0...arr.length).each do |_i|
    (0...arr.length - 1).each do |j|
      next unless (yield arr[j], arr[j + 1]).positive?

      temp = arr[j]
      arr[j] = arr[j + 1]
      arr[j + 1] = temp
      swap_test = false
    end
    break if swap_test
  end
  arr
end

bsort_by = bubble_sort_by(%w[hello hey hi here]) do |left, right|
  left.length - right.length
end
p bsort_by
