File.open(ARGV[0]).each_line do |line|
  output = line.split(' ')
  puts output.sort { |y, x| x.length <=> y.length }.first
end
