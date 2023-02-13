###
#
## Sort integer arguments (ascending)
##
###


result = []
ARGV.each do |arg|
  # skip if not integer
  next unless arg =~ /^-?[0-9]+$/

  # conver to integer 
  i_arg = arg.to_i

  # insert result at the right position
  result.each_with_index do |elem, index|
    if elem >= i_arg
      result.insert(index, i_arg)
      break
    end
  end

  result << i_arg if result.empty? || result.last < i_arg
end

puts result.join(" ")
    
