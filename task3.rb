#3. Сложение временных промежутков
#Сложить 2 временных промежутка и вывести общую длительность в человекочитаемом виде.
#В выводе использовать часы, минуты и секунды (при необходимости).
#На вход подается два числа t1 и t2, разделенные пробелом. 1 <= t1, t2 <= 100000
#
#Пример
#> ruby task.rb 1 1
#> 2 секунды
#> ruby task.rb 3600 3599
#> 1 час 59 минут 59 секунд
if ARGV.length < 2
	puts "Мало данных"
		exit
	elsif ARGV.length >= 3
	puts "Много данных"
	exit
end
if !(/\d+/.match ARGV[0]) || !(/\d+/.match ARGV[1])
	puts "ошибка"
	exit
end

t1 = ARGV[0].to_i
t2 = ARGV[1].to_i
		

if ( (1 <= t1) && (t2 <= 100000) && (t2>=1) && (t1 <= 100000) )
	str = ""
	resT = t1+t2
	resHour = resT.div 3600
	resTemp = resT % 3600
	resMin = resTemp.div 60
	resSec = (resT % 3600) % 60
	
	if !(resHour==0)
		str += resHour.to_s
	
		if ( (resHour%10)==1 )
			str += " час "
		elsif ( (resHour%10)>=2 && (resHour%10)<=4 )
			str += " часа "
		else str += " часов " 
		end
	end	
	
	if !(resMin==0)
	str += resMin.to_s
	
		if ( (resMin%10)==1 )
			str += " минута "
		elsif ( (resMin%10)>=2 && (resMin%10)<=4 )
			str += " минуты "
		else str += " минут " 
		end
	end		
	
	if !(resSec==0)
		str += resSec.to_s
	
		if ( (resSec%10)==1 )
			str += " секунда "
		elsif ( (resSec%10)>=2 && (resSec%10)<=4 )
			str += " секунды "
		else str += " секунд " 
		end
	end		
	
			puts str 
	
else
	puts "неправильные числа"
end	
		
