ar1 = [0, 1, 2, 3]
ar2 = [4, 5, 6, 7, 8, 9]
puts("Result: #{ar1 + ar2}")

s = "In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
puts(s.count('a'))

ss = s.split
print(ss.select{|i| ss.count(i) > 1 }.uniq)
puts()

ss = s.split.map(&:capitalize).join(" ")
puts(ss)

ss = s.split(",")
puts(ss)

ss1 = ss.join("...")
puts(ss1)

d = Array.new(10)
d[0] = Time.new.strftime('%d-%m-%y')
puts(d[0])

d.uniq
puts(d)
