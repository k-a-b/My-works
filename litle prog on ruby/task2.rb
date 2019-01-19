# Программа подсчета дней до НГ в текущем (указаном пользователем году).
# Подсчет проходит с учетом високосных лет.

if ARGV.length != 3
  puts 'Необходимо ввести полную дату'
  exit
end

year = ARGV[2].to_i
month = ARGV[1].encode('UTF-8', 'UTF-8')
day = ARGV[0].to_i

if ((1..31).cover? day) == false ||
   ('января' 'февраля' 'марта' 'апреля' 'мая' 'июня' 'июля' 'августа' 'сентября' 'октября' 'ноября' 'декабря'.include? month) == false ||
   ((1..2999).cover? year) == false
  print 'Необходимо ввести верную дату в формате: день(1-31) месяц(января..декабря) год(1-2999)'
  exit
end

if month == 'января'
  if (year % 4 == 0) & (year % 100 != 0) || (year % 400 == 0) || (year == 2000) 
    days = 366 - day
  else 
    days = 365 - day
  end

elsif month == 'февраля'
  if (year % 4 == 0) & (year % 100 != 0) || (year % 400 == 0) || (year == 2000)
    if day > 29 
      puts 'В феврале високосного года не может быть больше 29 дней!'
      exit
    else 
      days = 335 - day
    end
  else
    if day > 28 
      puts 'В феврале невисокосного года не может быть больше 28 дней!'
      exit
    else 
      days = 334 - day
    end
  end

elsif month == 'марта' 
  days = 306 - day
elsif month == 'апреля'
  if day > 30 
    puts 'В апреле не может быть больше 30 дней!'
    exit
  else 
    days = 275 - day
  end

elsif month == 'мая' 
  days = 245 - day
elsif month == 'июня'
  if day > 30 
    puts 'В июне не может быть больше 30 дней!'
    exit
  else 
    days = 214 - day
  end

elsif month == 'июля' 
  days = 184 - day
elsif month == 'августа' 
  days = 153 - day
elsif month == 'сентября'
  if day > 30 
    puts 'В сентябре не может быть больше 30 дней!'
    exit
  else 
    days = 122 - day
  end

elsif month == 'октября' 
  days = 92 - day
elsif month == 'ноября'
  if day > 30 
    puts 'В ноябре не может быть больше 30 дней!'
    exit
  else 
    days = 61 - day
  end

elsif month == 'декабря' 
  days = 31 - day
end
puts days
