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
if ( ARGV.length < 2 || ARGV.empty? )
	#puts "Мало данных"
		exit
	elsif ARGV.length >= 3
	#puts "Много данных"
	exit
end
if !(/\d+\.?\d*/.match ARGV[0]) || !(/\d+\.?\d*/.match ARGV[1])
	#puts "ошибка"
	exit
end

t1 = ARGV[0].to_f
t2 = ARGV[1].to_f
		

if ( (1..100000).include?(t1) && (1..100000).include?(t2) )
	str = ""
	resT = t1+t2
	resHour = resT.div 3600
	resTemp = resT % 3600
	resMin = resTemp.div 60
	resSec = (resT % 3600) % 60
	resSec = resSec.round
	
	if !(resHour==0)
		str += resHour.to_s
	
		if ( (resHour%10)==1 && ( resHour!=11 ) && ( (resHour%100)!=11 ) )
			str += " час"
		elsif ( (resHour%10)>=2 && (resHour%10)<=4 && !((12..14).include?(resHour)) && !((12..14).include?(resHour%100)) )
			str += " часа"
		else str += " часов" 
		end
		if ((resMin!=0) || (resSec!=0))
			str+=" "
		end
	end	
	
	if !(resMin==0)
	str += resMin.to_s
	
		if ( (resMin%10)==1 && ( resMin!=11 ) )
			str += " минута"
		elsif ( (resMin%10)>=2 && (resMin%10)<=4 && !((12..14).include?(resMin)) )
			str += " минуты"
		else str += " минут" 
		end
		if (resSec!=0)
			str+=" "
		end
	end		
	
	if !(resSec==0)
		str += resSec.to_s
	
		if ( (resSec%10)==1 && ( resSec!=11 ) )
			str += " секунда"
		elsif ( (resSec%10)>=2 && (resSec%10)<=4 && !((12..14).include?(resSec)))
			str += " секунды"
		else str += " секунд" 
		end
	end		
	
			puts str 
	
else
	#puts "неправильные числа"
	exit
end	
		
# в последней версии убрала лишние пробелы в конце строк
#закоментированы сообщения об ошибках