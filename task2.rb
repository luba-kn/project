#2. Минимальный сдвиг
#Найти минимальное количество сдвигов массива a, после которых он будет равен массиву b.
#Сдвиг можно осуществлять в любую сторону.
#Вывести -1, если такой сдвиг не существует.
#На вход подается две строки длины a и b. 1 <= a, b <= 10000
#
#Пример
#> ruby task.rb '1234' '2341'
#> 1

# encoding: utf-8
if ARGV.length < 2
	puts "Мало данных"
	exit
elsif ARGV.length >= 3
	puts "Много данных"
	exit
end

count = 0
str1 = ARGV[0]
str2 = ARGV[1]
str3 = []

n1 = str1.length
n2 = str2.length

#str1 = str1.split("")
#str2 = str2.split("")

if (n1>=1 && n1 <=10000 && n2>=1 && n2<=10000)
	if (n1 != n2)
		res = -1
		puts res
		exit
	elsif ((str1 <=> str2) == 0)
		res = 0
		puts res
		exit
	end	
		
		for i in 0..(n2)
			if ((str1 <=> str2) != 0)
				if count==n2
					res=-1
					puts res
					exit
				end
				
				puts str2[0]
				for j in 0..(n2-2)
										
					str3[j] = str2[j+1]
					
				end	
				str3[n2-1] = str2[0]
				str2 = str3
				puts str2.join("")
			count+=1
				
			else 
				res = count
				puts res
				
			end
		
		end
	
	
end

puts res
