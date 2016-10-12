def iteration_status
  puts "we are about to run the block."
  yield ("hooray!")
  puts "we've finished running the block."
end

iteration_status { |x| puts "this block has run #{x}."}