arr = [4, 0, -5, -1, 7, -1, 3]
p arr.select { |elem| elem > 0 }.sum

arr = ["apple", true, "kiwi", 4, 88, "33", false, "undefined", "JS"]
p arr.select { |elem| elem.class == String }

arr = [4, 5, 2, 1, 6, 5, 3, 5, 2, 5]
m = arr.max_by { |i| arr.count(i) }
arr.delete(m)
arr2 = [m]
p arr2 
p arr

arr = [1,2,55,3,100, 333, 9999];
arr2 = arr.group_by { |i| i.to_s.length }.transform_values(&:count)
arr2.delete(1)
arr2 = arr2.values
p arr2

arr = [5, "Limit", 12, "a", "3", 99, 2, [2, 4, 3, "33", "a", "text"], "strong", "broun"]
arr2 = arr.flatten.group_by { |i| i.class }.values
p arr2

names = "Alex,    Orysia, Misha,    Ira     , Paul";
names = names.split(',').map(&:strip)
names2 = names.sort.select { |name| name.length > 4 }
names = names.sort.join(', ')
p names2
p names
