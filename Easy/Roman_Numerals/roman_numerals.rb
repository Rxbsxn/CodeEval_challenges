class Roman
  ROMAN_NUMBERS = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
                    5 => 'V', 4 => 'IV', 1 => 'I' }.freeze

  def to_roman(num)
    result = ''
    ROMAN_NUMBERS.each do |arab, roman|
      while num >= arab
        result << roman
        num -= arab
      end
    end
    result
  end
end

unless ENV['RACK_ENV'] == 'rspec'
  File.open(ARGV[0]).each_line do |line|
    puts Roman.new.to_roman(line.to_i)
  end
end
