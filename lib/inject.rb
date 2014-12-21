class Array

	def my_inject(*parameter)
		memo = self.shift 
		(self.count).times do
			n = self.shift 
			if parameter[0].is_a? Symbol
			   memo = memo.send(parameter[0], n) 
			else
			   memo = yield(memo, n) 
			end
		end
		memo
	end

end