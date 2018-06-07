=begin
Программа проверки строки на полиндром.
В ТЗ указано что варианты символов - вся таблица ASCII, следовательно никакие "лишние" символы из строки не удаляются,
кроме посленего символа строки ?!.
В случае проверки на полиндром только буквенного состава строки, будет вставлена функция delete('^a-zA-Z')
=end

if ARGV.length != 1
   print "Необходимо ввести одну строку"
   exit
end

if (1..10000).include?(ARGV[0].length)==false
   puts 'Слишком длинная строка либо нет символов'
   exit
end

if /\W\z/.match(ARGV[0]) then newstr = ARGV[0].chop
  if newstr.delete(' ').downcase == newstr.delete(' ').downcase.reverse
     puts "YES"
     else puts "NO"
end

else
    if ARGV[0].delete(' ').downcase == ARGV[0].delete(' ').downcase.reverse
      puts "YES"
      else puts "NO"
    end
end