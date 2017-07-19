class ScrabbleGame
	@@letter_value = {
		a: 1, b: 3, c: 3, d: 2, e: 1,
	f: 4, g: 2, h: 4, i: 1, j: 8,
	k: 5, l: 1, m: 3, n: 1, o: 1,
	p: 3, q: 10, r: 1, s: 1, t: 1,
	u: 1, v: 4, w: 4, x: 8, y: 4,
	z: 10
	}
end

class ScrabbleWord < ScrabbleGame
	attr_accessor :word, :word_score

	def initialize(word)
		@word = word.downcase
	end

	def getter
		return @word.downcase
	end

	def score
		i = 0
		@word_score = 0
		(@word.length).times do |i|	
			@word_score += @@letter_value[:"#{@word[i]}"]
		end
		return @word_score
	end

	def multiplier_score(multiplier)
		score
		@word_score = @word_score * multiplier 
		return @word_score
	end

end



#Test
word1 = ScrabbleWord.new("snowflake")
#puts word1.score
puts word1.multiplier_score(2)

# letter_value = {
# 		a: 1, b: 3, c: 3, d: 2, e: 1,
# 	f: 4, g: 2, h: 4, i: 1, j: 8,
# 	k: 5, l: 1, m: 3, n: 1, o: 1,
# 	p: 3, q: 10, r: 1, s: 1, t: 1,
# 	u: 1, v: 4, w: 4, x: 8, y: 4,
# 	z: 10
# 	}

# puts letter_value[:"j"]
