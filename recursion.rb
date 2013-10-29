# Recursive range - inclusive

def rec_range(first, last)
  return [first] if first == last

  [first] + rec_range(first + 1, last)
end


# Recursive array sum

def rec_sum(array)
  return array.length == 1 ? array[0] : array.pop + rec_sum(array)
end


# Recursive exponentiation

def rec_exp(base, exp)
  return 1 if exp == 0

  base * rec_exp(base, exp - 1)
end


# Recursive exponentiation 2

def rec_exp_2(base, exp)
  return 1 if exp == 0

  if exp.odd?
    base * (rec_exp_2(base, (exp -1) / 2) ** 2)
  else
    rec_exp_2(base, exp / 2) ** 2
  end
end


# Recursive array deep dup

def rec_deep_dup(input)
  if !input.is_a?(Array)
    input
  else
    result = []
    input.each do |element|
      result << rec_deep_dup(element)
    end
  end
end


# Recursive Fibonacci

def rec_fibs(num)
  case num
  when 1
    [0]
  when 2
    [0, 1]
  else
    first_fibs = rec_fibs(num - 1)
    first_fibs << first_fibs[-1] + first_fibs[-2]
  end
end

puts rec_fibs(16)


# Recursive binary search (sorted array, target number)
def rec_bin_search(array, target)
  return nil if array.length == 0

  midpoint = array.length / 2

  return midpoint if array[midpoint] == target

  if target < array[midpoint]
    rec_bin_search(array.take(midpoint), target)
  else
    top = rec_bin_search(array.drop(midpoint + 1), target)
    top == nil ? nil : top + (midpoint + 1)
  end
end




