#1. Фильтр блокировок
#Реализовать функцию, исключающую из входного строки русские буквы Р, К и Н в любом регистре.
#На вход подается строка длины n. 1 <= n <= 10000
#
#Пример
#> ruby task.rb 'Окраина'
#> Оаиа

# encoding: utf-8


delChar1 = "НнРрКк"
delChar = ["Н","н","Р","р","К","к"]
str = ARGV[0]
newStr = []
n = str.length

if (n<1 || n>10000)
	puts "не та длина строки"
	exit
end
puts delChar

for i in 0..n
	puts str[i]
#	
#
#	if !(sym.object_id != "P".to_sym.object_id || sym.object_id != "р".to_sym.object_id || sym.object_id != "К".to_sym.object_id || sym.object_id != "к".to_sym.object_id || sym.object_id != "Н".to_sym.object_id || sym.object_id != "н".to_sym.object_id )
	  

#	  newStr.push(str[i])
#  end
	
#	for j in 0..delChar.length
#		if (str[i] == delChar[j])
#			flag = false
#		else flag = true
#		end
#	end
	
	flag1 = delChar1.include? str[i]        # true
	
	puts flag
	
	if (flag == false)
		newStr.push(str[i])
	end
	
end

#
#str.delete("Р")
#str.delete("р")
#str.delete("Н")
#str.delete("н")
#str.delete("К")
#str.delete("к")

str1 = newStr.join("")
	puts str1

