def pad(array, min_size, value)
  p Array.new(min_size){|x| value}
end

pad([1,2,3], 5, "apple")