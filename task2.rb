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

def sravnit(a,b)
	res = true
	for i in 0..a.length-1
		if ( a[i] <=> b[i] ) == 0
			res = true
		else 
			res = false
			return res
			exit
		end
	end
	return res
end

if ( ARGV.length < 2 || ARGV.empty? )
	#puts "Мало данных"
	exit
elsif ARGV.length >= 3
	#puts "Много данных"
	exit
end

count = 0
str1 = ARGV[0]
str2 = ARGV[1]
str3 = []

#puts str1.class

n1 = str1.length
n2 = str2.length

#str1 = str1.split("")
#str2 = str2.split("")

flag = sravnit(str1,str2)

if ((1..10000).include?(n1) && (1..10000).include?(n2))
	if (n1 != n2)
		res = -1
		puts res
		exit
	elsif (flag)
		res = 0
		puts res
		exit
	end
end
	
	
for i in 0..(n1)
	flag = sravnit(str1,str2)
	if !(flag)
			
		if count == n1
			res = -1
			puts res
			exit
		end
				
		lastEl = str1[0]
		for j in 0..(n2-2)
										
			str3[j] = str1[j+1]
		end	

		str3.delete_at(n2-1)
		str3.push(lastEl)
		str1 = str3
#		puts str1.join("")
		count+=1

	else 
		res1 = count
#		puts res1
		
	end

end

	str1 = ARGV[0]
	count = 0
for i in 0..(n1)
	flag = sravnit(str1,str2)
	if !(flag)
			
		if count == n1
			res = -1
			puts res
			exit
		end
				
		firstEl = str1[n2-1]
		str3 = []
		str3[0] = firstEl
		for j in 0..(n2-2)
										
			str3.push(str1[j])
		end	
		
		str1 = str3
#		puts str1.join("")
		count+=1

	else 
		res2 = count
#		puts res2
		
	end

end

#puts res1
#puts res2

if (res1 > res2)
	res = res2
	puts res
else
	res = res1
	puts res
end
#закоментированы сообщения об ошибках