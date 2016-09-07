file = File.read "input.txt"
code_characters = 0
memory_characters = 0

file.each_line do |line|
	code_characters += line.chomp.length
	line.gsub!(/(\\x\d{2})|(\\)|(\\")/,'a')
    line.gsub!(/\W/, '')
	memory_characters += line.scan(/\D/).count
end
puts code_characters - memory_characters