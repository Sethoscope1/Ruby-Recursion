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

def rec_deep_dup(array)

  array.each do |element|
    if element.is_a?(array)

    else

    end
  end
end
