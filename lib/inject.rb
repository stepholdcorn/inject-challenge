class Array

	def my_inject(*parameter)
		copy = self.dup
		if parameter[0].is_a? Integer
		   memo = parameter[0]
		   (copy.count).times do
		    	n = copy.shift 
				(parameter[1].is_a? Symbol) ? memo = memo.send(parameter[1], n) : memo = yield(memo, n) 
			end
		else
			memo = copy.shift  
			(copy.count).times do
				n = copy.shift 
				(parameter[0].is_a? Symbol) ? memo = memo.send(parameter[0], n) : memo = yield(memo, n)
			end
		end
		memo
	end

end