arr = [3, 6, 1, 8, 2, 10]
puts "Найменший елемент: #{arr.sort[0]}"
puts "Найбільший елемент: #{ arr.sort[-1]}"

sum = 0
for i in arr do
    sum += i
end
puts "Сума елементів: #{sum}"

elem = 6
count = 0
for i in arr do
    if i == elem
        count += 1
      end
end
puts "Кількість входжень елементу #{elem}: #{count}"

elem = 6
for i in arr do
    if i == elem
        arr.delete(i)
      end
end
print arr
puts

arr = [3, 6, 1, 8, 2, 10]
res_arr = []
for i in (arr.length - 1).downto(0) do
    res_arr.push(arr[i])
end
print res_arr
puts

arr = [3, 6, 1, 8, 2, 10]
elem = 6
if arr.any?(elem)
  puts "Масив містить елемент #{elem}"
else
  puts "Масив не містить елемент #{elem}"
end

arr = [3, 6, 1, 8, 2, 10]
even_arr = []
for i in arr do
    if i % 2 == 0
        even_arr.push(i)
    end
end
print even_arr
puts

arr = [3, 6, 1, 8, 2, 10]
even_arr = []
for i in arr do
    if i % 2 != 0
        even_arr.push(i)
    end
end
print even_arr
puts

arr = [3, 6, 1, 8, 2, 10]
for i in 0..(arr.length - 1) do
  arr[i] **= 2
end
print arr
puts

arr = [3, 6, 1, 8, 2, 10]
hash = {}
for i in arr do
    hash[i] = arr.index(i)
end
print hash
puts

arr = [3, 6, 1, 8, 2, 10]
summ_arr = []
k = 0
for i in arr do
  summ_arr.push(i + k)
  k = i
end
print summ_arr.inspect
puts

arr = [3, 6, 1, 8, 2, 10]
num = 5
for i in (0...arr.length)
    if  arr[i] > num
        print i 
        break
    end
end

arr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
result_arr = []
for i in arr do
    if i == number
        result_arr.push(i)
    end
end
print result_arr
puts

arr = ["hello", "world", "ruby"]
reversed_arr = []
for i in arr do
    reversed_arr.push(i.reverse)
end
print reversed_arr
puts

arr = [3, 6, 1, 8, 2, 10]
number = 5
sum = 0
for i in arr do
    if i < number
        sum += i
    end
end
puts sum

arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
unique_arr = []
for i in arr do
  unless unique_arr.include?(i)
    unique_arr.push(i)
  end
end
puts unique_arr.length

arr = ["hello", "world", "ruby"]
upcased_arr = []
for i in arr do
  upcased_arr = arr.map(&:upcase)
end
print
puts

n = 10
res = n * (n + 1) / 2
puts res

for i in 1..100 do
  if i % 3 == 0
      print i, " "
  end
end
puts

factorial = 1
for i in 1..5 do
    factorial *= i
end
puts factorial

fibonacci = [1, 1]
for i in 2...100 do
  fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
  break if fibonacci[i] > 100
end
print fibonacci[0...fibonacci.length - 1] 
puts

string = "The quick brown fox jumps over the lazy dog"
word_count = string.count(' ')+1
puts word_count 

for i in 1..5
  puts i
end

numbers = [1, 2, 3, 4, 5]
squares = []
for i in numbers do
  squares.push(i * i)
end
print squares
puts

numbers = [1, 2, 3, 4, 5]
even_numbers = []
for i in numbers do
  if i % 2 == 0
    even_numbers << i
  end
end
print even_numbers
puts

numbers = [1, 2, 3, 4, 5]
even_numbers = []
for i in numbers do
  if i % 2 != 0
    even_numbers << i
  end
end
print even_numbers
puts

numbers = [1, 2, 3, 4, 5]
sum = 0
for i in numbers do
  sum +=i
end
puts sum

fruits = ['apple', 'banana', 'cherry']
sum = 0
index = 0
for elem in fruits
   index += 1
   puts "#{index}. #{elem}"
end

letters = ['a', 'b', 'c']
numbers = [1, 2, 3]
result = []
for i in letters do
  result.push(i, i)
end
print result
puts

numbers = [2, 4, 6, 8, 10]
even = true
for i in numbers do
  if i % 2 != 0
    even = false
    break
  end
end
puts even

numbers = [1, 2, 3, 4, 5]
any_three = false
any_five = false
for i in numbers do
  if i > 3
    any_three = true
  end
  if i > 5
    any_five = true        
  end
end
puts any_three
puts any_five

numbers = [1, 3, 5, 7, 9]
none = true
for i in numbers do
  if i % 2 == 0
    none = false
    break
  end
end
puts none

numbers = [1, 2, 3, 4, 5]
k = 0
for i in numbers do
  if i % 2 == 0
    k += 1
  end
end
puts k

numbers = [1, 2, 3, 4, 5]
even = 0
for i in numbers do
    if i % 2 == 0
        even = i
        break
    end
end
puts even

numbers = [1, 2, 3, 4, 5]
res = []
for i in numbers do
    if i % 2 == 0
        res.push(i)
    end
end
print res
puts

numbers = [1, 2, 3, 4, 5]
even = []
odd = []
for i in numbers
    if i % 2== 0
        even.push(i)
    else
        odd.push(i)
    end
end
puts even.inspect
puts odd.inspect

numbers = [1, 2, 3, 4, 5]
result = []
for i in numbers do
    result << i
end
puts result.inspect

numbers = [1, 2, 3, 4, 5]
res = []
b = false
for i in numbers do
    if i < 3
      next
    else
      b = true
    end
    if b
      res.push(i)
    end
end
puts res.inspect

numbers = [1, 2, 3, 4, 5]
res = []
for i in numbers do
    break unless i < 3
    res.push(i)
end
puts res.inspect

numbers = [1, 2, 3, 4, 5]
res = []
for i in numbers do
  res.push(i*i)
end
puts res.inspect

numbers = [1, 2, 3, 4, 5]
sum = 0
for i in numbers do
  sum +=i
end
puts sum

numbers = [1, 2, 3, 4, 5]
puts numbers.sum

numbers = [1, 2, 3, 4, 5]
puts numbers.max

hash = {a: 1, b: 2, c: 3}
hash.map { |key, value| puts "Key: #{key}, Value: #{value}" }

numbers = [1, 2, 3, 4, 5]
numbers.map!(&:to_s)
puts numbers.inspect

hash = {a: 1, b: 2, c: 3, d: 4}
even = []
hash.each do |key, value|
  if value.even?
    even.push(value) 
  end
end
puts even.inspect

numbers = [1, 2, 3, 4, 5]
for num in numbers
  puts num
end

numbers = [10, 50, 20, 30, 40]
max = numbers.inject(numbers[0]) { |max, element| element > max ? element : max }
puts max

numbers = [10, 50, 20, 30, 40]
average = numbers.inject(0.0) { |sum, element| sum + element } / numbers.length
puts average

$global_variable = []
add_to_list = lambda do |i, &b|
  global_variables << i
  b.call if b
end
add_to_list.call("item1")
add_to_list.call("item2") { puts "Added to list!" }

def calculate(num1, num2, op = nil)
  case op
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  else
    "No block given"
  end
end
puts calculate(10, 20, '+')
puts calculate(10, 20, '-')
puts calculate(10, 20)

def choose_block(value)
  if value == 1
    yield "First block"
  else
    yield "Second block"
  end
end
choose_block(1) { |message| puts message }
choose_block(2) { |message| puts message }

def map_array(arr)
  arr.map { |element| yield(element) }
end
numbers = [1, 2, 3, 4, 5]
squared = map_array(numbers) { |num| num ** 2 } #=> [1, 4, 9, 16, 25]
doubled = map_array(numbers) { |num| num * 2 } #=> [2, 4, 6, 8, 10]
puts squared.inspect
puts doubled.inspect

my_proc = Proc.new { |x| x > 5 }
my_array = [2, 4, 6, 8, 10]
filtered_array = my_array.select(&my_proc)
puts filtered_array.inspect

increment = Proc.new { |x| x + 1 }
puts increment.call(5)

arr = [1, 2, 3]
increment = Proc.new { |x| x + 1 }
res = arr.map(&increment)
puts res.inspect

str = "hello world"
upcase = Proc.new { |char| char.upcase }
reversed = str.each_char.map(&upcase).reverse.join
puts reversed

min = Proc.new { |a, b| a < b ? a : b }
puts min.call(5, 3)

is_string = Proc.new { |obj| obj.is_a?(String) }
puts is_string.call("hello")
puts is_string.call(123) 

tag = Proc.new { |name, content| "<#{name}>#{content}</#{name}>" }
puts tag.call("h1", "Hello world")


