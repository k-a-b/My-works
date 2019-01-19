# Программа вчисления времени исходя из двух входящих цифр.
# В ТЗ указано как метод вывода результата использовать PUTS, однако в примере решения показан метод PRINT.
# В решении использован PRINT для удобочитаемости.

if ARGV.length != 2 || (1..100_000).cover?(ARGV[0].to_i) == false || (1..100_000).cover?(ARGV[1].to_i) == false
  print 'Необходимо ввести два числа, в диапазоне от 1 до 100 000'
  exit
end

sum = ARGV[0].to_i + ARGV[1].to_i

chas = sum / 3600
minut = (sum % 3600) / 60
sek = (sum % 3600) % 60

if chas != 0
  if chas == 1 then print "#{chas} час\s"
  elsif (2..4).cover?(chas) then print "#{chas} часа\s"
  elsif (5..20).cover?(chas) then print "#{chas} часов\s"
  elsif chas % 10 == 1 then print "#{chas} час\s"
  elsif (2..4).cover?(chas % 10) then print "#{chas} часа\s"
  elsif (0o5..9).cover?(chas % 10) then print "#{chas} часов\s"
  end
end

if minut != 0
  if minut == 1 then print "#{minut} минута\s"
  elsif (2..4).cover?(minut) then print "#{minut} минуты\s"
  elsif (5..20).cover?(minut) then print "#{minut} минут\s"
  elsif minut % 10 == 1 then print "#{minut} минута\s"
  elsif (2..4).cover?(minut % 10) then print "#{minut} минуты\s"
  elsif (0o5..9).cover?(minut % 10) then print "#{minut} минут\s"
  end
end

if sek != 0
  if sek == 1 then print "#{sek} секунда\s"
  elsif (2..4).cover?(sek) then print "#{sek} секунды\s"
  elsif (5..20).cover?(sek) then print "#{sek} секунд\s"
  elsif sek % 10 == 1 then print "#{sek} секунда\s"
  elsif (2..4).cover?(sek % 10) then print "#{sek} секунды\s"
  elsif (0o5..9).cover?(sek % 10) then print "#{sek} секунд\s"
  end
end
