def merge_sort(ary)
  if ary.length < 2
    ary # => [18] && => [6]
  else
    result = Array.new
    half_length = (ary.length / 2.0).floor # => 1

    # Sort left hand of ary.length
    left_half = ary[0..half_length - 1] # => [18, 6] # => [18]
    left_half_s = merge_sort(left_half) # => [18]

    # Sort right hand of ary.length
    right_half = ary[half_length..-1] # => [4, 33] # => [6]
    right_half_s = merge_sort(right_half) # => [6]

    # Merge sorted halves
    ary.length.times do
      if left_half_s.empty?
        result << right_half_s.delete_at(0)
      elsif right_half_s.empty?
        result << left_half_s.delete_at(0)
      else
        result << (left_half_s.first < right_half_s.first ? left_half_s.delete_at(0) : right_half_s.delete_at(0)) # => [6]
      end
    end

    result
  end
end

def merge_sort2(ary)
  if ary.length < 2
    ary
  else
    result = Array.new
    half_length = (ary.length / 2.0).floor # => 1

    # Sort left hand of ary.length
    left_half_s = merge_sort(ary[0..half_length - 1]) # => [18]

    # Sort right hand of ary.length
    right_half_s = merge_sort(ary[half_length..-1]) # => [6]

    # Merge sorted halves
    ary.length.times do
      if left_half_s.empty? || right_half_s.empty? == true
        result << (left_half_s.empty? ? right_half_s.delete_at(0) : left_half_s.delete_at(0))
      else
        result << (left_half_s.first < right_half_s.first ? left_half_s.delete_at(0) : right_half_s.delete_at(0)) # => [6]
      end
    end

    result
  end
end

puts merge_sort([6, 12, 4, 103, 43, 10, 54, 18, 55, 22]).inspect 
puts merge_sort2([6, 12, 4, 103, 43, 10, 54, 18, 55, 22]).inspect 
# => [4, 6, 10, 12, 18, 22, 43, 54, 55, 103]