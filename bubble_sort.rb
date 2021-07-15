def bubble_sort(input)
  loop do
    sort_iter = input.length - 1
      sorted = input.clone
      i = 0
      while i < sort_iter
      first = input[i]
      second = input[i+1]
      if first > second
          input[i] = second
          input[i+1] = first
      end
      i += 1
    end
  break if input === sorted
  end
puts input.to_a
end

bubble_sort([4,3,78,2,0,2])