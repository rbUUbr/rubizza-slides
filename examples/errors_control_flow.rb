begin
  number = gets.chomp.to_i
  raise StandardError if number.even?

  puts 'Im valid!'
rescue StandardError
  puts 'Im even!'
ensure
  puts 'Im done!'
end
