# Recursive range - inclusive

def rec_range(first, last)
  return [first] if first == last

  [first] + rec_range((first + 1), last)
end

p rec_range(4, 10)