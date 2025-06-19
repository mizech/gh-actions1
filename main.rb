require_relative './add_thirty_days'
require_relative './convert_celsius'

puts 'Enter temperature in degree Celsius -> '
celsius = gets.chomp

convert_from(celsius: celsius,
             to_target_unit: 'Kelvin',
             error: 'Conversion to Kelvin failed.') { |celsius| celsius + 273.15 }

convert_from(celsius: celsius,
             to_target_unit: 'Fahrenheit',
             error: 'Conversion to Fahrenheit failed.') { |celsius| celsius * 1.8 + 32 }

results = add_thirty_days(['05**28**2023', '09**12**1991', '02**08**2002'])
puts results.inspect
