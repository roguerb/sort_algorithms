require 'byebug'
require_relative './sort_helper.rb'

def random_sort(arr)
  result = nil

  loop do
    result = arr.shuffle

    break if sorted?(result)
  end

  result
end
