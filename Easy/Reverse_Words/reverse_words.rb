File.open(ARGV[0]).each_line do |line|
  output = line.split(' ')
  puts output.reverse.join(' ')
end
