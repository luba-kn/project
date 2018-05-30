#1. Фильтр блокировок
#Реализовать функцию, исключающую из входного строки русские буквы Р, К и Н в любом регистре.
#На вход подается строка длины n. 1 <= n <= 10000
#
#Пример
#> ruby task.rb 'Окраина'
#> Оаиа

# encoding: utf-8

if (ARGV.empty? )
	puts "Мало данных"
		exit
	elsif ARGV.length >= 2
	puts "Много данных"
	exit
end

str = ARGV[0]
n = str.length
if (n<1 || n>10000)
	puts "не та длина строки"
	exit
end

str = str.encode('utf-8')

#puts str.encode('utf-8')
str = str.gsub /[\u041A\u043A\u041D\u043D\u0420\u0440]/, ""
puts str