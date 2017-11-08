def merge_sort(ary)
  if ary.length < 2
    ary
  else
    result = Array.new
    half_length = (ary.length / 2.0).floor

    # Sort left hand of ary.length
    left_half = ary[0..half_length - 1]
    left_half_s = merge_sort(left_half)

    # Sort right hand of ary.length
    right_half = ary[half_length..-1]
    right_half_s = merge_sort(right_half)

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

puts merge_sort([6, 12, 4, 103, 43, 10, 54, 18, 55, 22]).inspect 
# => [4, 6, 10, 12, 18, 22, 43, 54, 55, 103]