require 'byebug'

def random_sort(arr)
  result = nil

  loop do
    result = arr.shuffle

    break if sorted?(result)
  end

  result
end

def sorted?(arr)
  fail ArgumentError unless arr.is_a? Array

  arr.each_with_index do |item, index|
    next if index == 0

    prev_item = arr[index - 1]

    return false if prev_item > item
  end

  true
end
