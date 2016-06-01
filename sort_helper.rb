def sorted?(arr)
  fail ArgumentError unless arr.is_a? Array

  arr.each_with_index do |item, index|
    next if index == 0

    prev_item = arr[index - 1]

    return false if prev_item > item
  end

  true
end
