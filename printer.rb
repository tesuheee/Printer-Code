changed = [3, 7, 12, 54, 13, 8, 9, 14, 12, 2, 4, 1, -7, -5] # input array
changed.delete_if { |e| e <= 0 }.uniq!.sort!

result = []
changed.each_index do |i|
  break if i == changed.length - 1
  result.push(changed[0]) if i == 0
  if changed[i + 1] - changed[i] == 1
    result.push('-')\
  elsif
    result.push(changed[i], ',', changed[i + 1])
  end
end

code = []
result.each do |member|
  if member != '-'
    code.push(member)
  elsif code.last != '-'
    code.push('-')
  end
end

puts code.join
