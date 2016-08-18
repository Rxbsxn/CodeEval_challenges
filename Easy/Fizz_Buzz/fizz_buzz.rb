class Fizzbuzz
  attr_reader :x, :y, :max

  def initialize(x, y, max)
    @x = x
    @y = y
    @max = max
  end

  def process
    result_string = ''
    1.upto(max) do |number|
      if number % x == 0
        result_string << 'F'
        result_string << 'B' if number % y == 0
      elsif number % y == 0
        result_string << 'B'
      else
        result_string << number.to_s
      end
      result_string << ' ' unless number == max
    end
    result_string
  end
end

unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    puts Fizzbuzz.new(*line.split(' ').map(&:to_i)).process
  end
end
