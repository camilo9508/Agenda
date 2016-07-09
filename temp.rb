def calculation
  yield << " Como estas"
end

puts calculation {"HOla"}
#puts calculation(5, 6) { |a, b| a - b } # subtraction