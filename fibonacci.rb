# Fibonacci sequence with iteration

def fibs(n)
  result = [0, 1]

  (n-2).times do
    result << result[-1] + result[-2]
  end

  result
end

# Fibonacci sequence with recursion

# LONG VERSION:
# 
# def fibs_rec(n)
#   if n == 0
#     0
#   elsif n == 1
#     1
#   else
#     fibs_rec(n-1) + fibs_rec(n-2)
#   end
#   fibs(n)
# end

# SHORT VERSION: 
def fibs_rec(n)
  n == 0 || n == 1 ? n : fibs_rec(n-1) + fibs_rec(n-2)
  fibs(n)
end

puts fibs(13).inspect # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
puts fibs_rec(13).inspect # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]