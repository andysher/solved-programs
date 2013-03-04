levels = 10
triangle = []

if levels >= 1
	triangle.push([ARGV[0].to_i])
end

if levels >= 2
	triangle.push([ARGV[0].to_i, ARGV[0].to_i])
end
last_level = [ARGV[0].to_i, ARGV[0].to_i]

count = 3

while count <= levels
	next_level = [ARGV[0].to_i]
	index = 0
	while index < last_level.length - 1
		next_level.push last_level[index]+last_level[index + 1]
		index = index + 1
	end
	next_level.push(ARGV[0].to_i)
	triangle.push(next_level)
	last_level = next_level
	count = count + 1
end

number_length = last_level[last_level.length / 2].to_s.length
triangle_length = last_level.length * number_length + last_level.length - 1
triangle.each do |level|
	final_level = []
	level.each do | number|
		final_level.push(number.to_s.center(number_length))
	end
	puts final_level.join(' ').center(triangle_length)
end
