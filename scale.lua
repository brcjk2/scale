store = {}

file = io.open(arg[1])

x = 1

for i in file:lines() do
	store[x] = i
	x = x + 1
end
q = x
x = 1

print(store[1])

while x<q do
	stored = (string.gsub(store[x], "(%d+)", function(n)
		return tonumber(n)*tonumber(arg[2])
	end))
	x = x + 1
	print(stored)
end

