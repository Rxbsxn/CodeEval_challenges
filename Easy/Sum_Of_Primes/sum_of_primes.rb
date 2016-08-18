require 'prime'
p Prime.take(1000).inject(0) { |sum, n| sum + n }
