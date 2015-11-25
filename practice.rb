class Practice
	def string_reverse
		puts "Enter a string"
		string = gets.chomp
		word = string.split("")
		for i in 0..word.length
			print word[word.length-i]
		end
	end

	def pattern
		puts ""
		numbers = "a".."z"
		numbers.each_with_index do |number, index|
			if (index+1)%3==0
				print "#{number} \n"
			else
				print number
			end
		end
	end

	def palindrome
		puts ""
		string = gets.chomp
		string_arr = string.split("")
		reverse_string = string.reverse
		reverse_arr = reverse_string.split("")
		palindrome = false
 		for i in 0..(string.length - 1)
			if string_arr[i] == reverse_arr[i]
				palindrome = true
			else
				break
			end	
 		end
		puts palindrome ? "Palindrome" : "Not Palindrome"
		puts string == reverse_string ? "Palindrome" : "Not Palindrome"
	end	
end

obj = Practice.new
obj.string_reverse
obj.pattern
obj.palindrome