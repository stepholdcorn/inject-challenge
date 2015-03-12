class Array

	def my_inject(*parameter)
		copy = self.dup
		if parameter[0].is_a? Integer
		  memo = parameter[0]
		  index = 1		   
		else
			memo = copy.shift 
			index = 0
		end 
		(copy.count).times do
      n = copy.shift 
      (parameter[index].is_a? Symbol) ? memo = memo.send(parameter[index], n) : memo = yield(memo, n) 
		end
		memo
	end

end