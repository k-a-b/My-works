=begin
Программа подсчета дней до НГ в текущем (указаном пользователем году).
Подсчет проходит с учетом високосных лет.
=end

if ARGV.length != 3
    puts "Необходимо ввести полную дату"
    exit
end

year = ARGV[2].to_i
month = ARGV[1].encode('UTF-8','UTF-8')
day = ARGV[0].to_i


if ((1..31).include?day) == false || 
    (('января''февраля''марта''апреля''мая''июня''июля''августа''сентября''октября''ноября''декабря').include?month)==false ||
    ((1..2999).include?year) == false
    print "Необходимо ввести верную дату в формате: день(1-31) месяц(января..декабря) год(1-2999)"
    exit
end

if (month=='января') 
 if (year%4==0) & (year%100!=0) || (year%400 == 0) || (year == 2000) then days = 366-day
  else days = 365-day
 end
            
    elsif (month=='февраля') 
     if (year%4==0) & (year%100!=0) || (year%400 == 0) || (year == 2000) 
      if (day>29) then puts 'В феврале високосного года не может быть больше 29 дней!'
        exit
       else days = 335-day
      end
      else 
       if (day>28) then puts 'В феврале невисокосного года не может быть больше 28 дней!'
         exit
        else days = 334-day
       end
     end
                
        elsif (month=='марта') then days = 306-day
            elsif (month=='апреля') 
             if (day>30) then puts 'В апреле не может быть больше 30 дней!'
                exit
              else days = 275-day
             end
                     
                elsif (month=='мая') then days = 245-day
                    elsif (month=='июня')
                     if (day>30) then puts 'В июне не может быть больше 30 дней!'
                       exit
                      else days = 214-day
                     end
                           
                        elsif (month=='июля') then days = 184-day
                            elsif (month=='августа') then days = 153-day
                                elsif (month=='сентября')
                                 if (day>30) then puts 'В сентябре не может быть больше 30 дней!'
                                   exit
                                  else days = 122-day
                                 end
                                        
                                    elsif (month=='октября') then days = 92-day
                                        elsif(month=='ноября') 
                                         if (day>30) then puts 'В ноябре не может быть больше 30 дней!'
                                           exit
                                          else days = 61-day
                                         end
                                                
                                            elsif(month=='декабря') then days = 31-day
        end
puts days