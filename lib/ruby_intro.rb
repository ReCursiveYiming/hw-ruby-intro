# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length > 0
    s = 0
    arr.each do |x|
      s += x
    end
    return s
  else
    return 0
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    fir = -100
    fir_id = 0
    sec = -100
    arr.each do |x|
      if x >= fir
        fir = x
        fir_id = arr.index(fir)
      end
    end
    arr.delete_at(fir_id)
    arr.each do |x|
      if x >= sec
        sec = x
      end
    end
    return fir + sec
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  else
    flag = false
    for i in 0...arr.length
      for j in i + 1...arr.length
        if arr[i] + arr[j] == n
          flag = true
        end
      end
    end
    return flag
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  asc = s[0].ord
  c = s[0]
  if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U'
    return false
  elsif asc >= 97 && asc <= 122 || asc >= 65 && asc <= 90
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  else
    s.each_char do |c|
      if c != '0' && c != '1'
        return false
      end
    end
    num = s.to_i
    if num % 100 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  # @@isbn = ""
  # @@price = 0.0
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    price = price.to_f
    if isbn == '' || price <= 0
      raise ArgumentError.new()
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % @price
  end
  
end
