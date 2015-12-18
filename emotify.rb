letters = ARGV[0].chars.map do |char|
  File.read("./letters/#{char}").split "\n"
end

output = Hash.new("")

letters.each do |letter|
  letter.each_with_index do |letter_line,letter_line_index| 
    output[letter_line_index] = output[letter_line_index] + letter_line + "0"
  end
end

output.each_value do |line|
  puts line.gsub(/1/,"(#{ARGV[1]})").gsub(/0/,"(#{ARGV[2]})")
end
