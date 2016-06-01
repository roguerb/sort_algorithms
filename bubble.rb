require 'byebug'
require_relative './sort_helper.rb'

def bubble_sort(arr)
  result = arr.dup

  loop do
    result.each_with_index do |current_item, index|
      next if index == 0

      prev_item = result[index - 1]

      if prev_item > current_item
        result[index - 1] = current_item
        result[index] = prev_item
      end
    end

    break if sorted?(result)
  end

  result
end
