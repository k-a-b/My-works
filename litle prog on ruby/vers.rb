puts 'Введите версии программ, которые хотите срвнить'
arr1 = gets.chomp.split('.').map { |e| e.to_i }
arr2 = gets.chomp.split('.').map { |e| e.to_i }
c = arr1 <=> arr2
if c == 1
  puts 'Версия 1 старше'
elsif c == -1
  puts 'Версия 2 старше'
else
  puts 'Версии одинаковы'
end
