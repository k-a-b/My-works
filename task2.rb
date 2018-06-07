=begin
Программа подсчета дней до НГ в текущем (указаном пользователем году).
Подсчет проходит с учетом високосных лет.
=end

if ARGV.length != 3 ||
    ((1..31).include?(ARGV[0].to_i)) == false || 
    ((января..декабря) !== ARGV[1]) ||
    ((1..2999).include?(ARGV[3].to_i)) == false
print "Необходимо ввести дату в формате: 6 сентября 2021"
exit
end

if ARGV[1]==января days = 365-ARGV[0].to_i
    elsif ARGV[1]==февраля days = 334-ARGV[0].to_i
        elsif ARGV[1]==марта days = 306-ARGV[0].to_i
            elsif ARGV[1]==апреля days = 275-ARGV[0].to_i
                elsif ARGV[1]==мая days = 276-ARGV[0].to_i
