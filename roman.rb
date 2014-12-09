require 'pry'

class Fixnum 	
	def to_roman	
		number = self		
		val = ""

		roman_mapping.each do |arabic, roman|
			while number >= arabic
			val += roman
			number -= arabic
			end  
		end

		val
	end	
	
private

	def roman_mapping 
		{
			1000 => 'M',
			900 => 'CM',
			500 => 'D',
			400 => 'CD',
			100 => 'C',
			90 => 'XC',
			50 => 'L',
			40 => 'XL',
			10 => 'X',
			9 => 'IX',
			5 => 'V',
			4 => 'IV',
			1 => 'I'		,
		}
	end
end



			# 1000 => 'M',
			# 900 => 'CM',
			# 500 => 'D',
			# 400 => 'CD',
			# 100 => 'C',
			# 90 => 'XC',
			# 50 => 'L',
			# 40 => 'XL'
			# 10 => 'X',
			# 9 => 'IX',




# #To-Do2: method to return array with hash
# 		number_to_subtract, string_to_append = 
# 		if number >= 500
# 			[500, "D"]

# 		elsif number >= 400
# 			[400, "CD"]

# 		elsif number >= 100
# 			[100, "C"]
			
# 		elsif number >= 90
# 			[90, "XC"]

# 		elsif number >= 50
# 			[50, "L"]

# 		elsif number >= 40  
# 			[40, "XL"]
		
# 		elsif number >= 10
# 			[10, "X"]

# 		elsif number == 9 
# 			[9, "IX"]

# 		elsif number >= 5
# 			[5, "V"]
		
# 		elsif number == 4
# 			[4, "IV"]

# #To-Do1: break out range
# 		elsif (1..3).include?(number)
# 			temp_val = ""
# 			number.times { temp_val << "I" }
# 			[number, temp_val]
# 		elsif number == 3
# 			[3, "III"]
# 		elsif number == 2
# 			[2, "II"]
# 		else number == 1
# 			[1, "I"]
				
# 		end


# 		number = number - number_to_subtract
# 		val << string_to_append

# 		if number > 0
# 			val << number.to_roman
# 		end

# 		return val

# 	end
