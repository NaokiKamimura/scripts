# header => user_name, card_number, card_name
# row => date, usage_place, amount...etc
require 'csv'

file_path = 'csv_path'
outputs = {}
CSV.foreach(file_path, headers: false, encoding: 'Shift_JIS:UTF-8') do |row|
  puts row
  outputs[row[1]] = (outputs[row[1]].to_i + row[2].to_i)
end

outputs.each_pair do |place, amount|
  puts "利用場所: #{place}, 合計金額: #{amount}"
end
