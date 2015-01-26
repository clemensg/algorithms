# Mergesort
# Clemens, 2015
#

# [5], [3] => [3, 5]
def merge(a, b)
  c = []
  until a.empty? && b.empty? do
    if a.first && ((b.first && a.first <= b.first) || !b.first)
      c << a.shift
    else
      c << b.shift
    end
  end
  return c
end

def mergesort(n)
  if n.nil? || n.empty?
    return []
  elsif n.length == 1
    return n
  else
    first = n[0..(n.length/2)-1]
    second = n[n.length/2..-1]

    #puts "first: #{first}, second: #{second}"

    return merge(mergesort(first), mergesort(second))
  end
end
