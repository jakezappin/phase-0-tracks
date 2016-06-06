def build_array(arg1, arg2, arg3)
	return [arg1, arg2, arg3]
end

def add_to_array(arr, param)
	return arr.push(param)
end

p = []

p.push(1)
p.push(2)
p.push(3)
p.push(4)
p.push(5)

p.delete_at(2)

p.insert(2, 6)

p.shift

p.index(2)

q = [11, 12, 13]

z = p + q

puts build_array(1, "two", nil)

puts add_to_array([1,2,3,4], 5)

