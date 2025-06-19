# frozen_string_literal: true

def convert_from(celsius:, to_target_unit: 'Kelvin', error: 'Conversion failed')
  result = yield Float(celsius, exception: true)
  puts "#{celsius} degree Celsius is equal #{result} degree #{to_target_unit}."
rescue StandardError
  puts error
end
