class Array

	def my_inject(*parameter)
		
		if parameter[0].is_a? Integer
			   memo = parameter[0]
			   (self.count).times do
			    	n = self.shift 
					if parameter[1].is_a? Symbol
			   			memo = memo.send(parameter[1], n) 
					else
			   			memo = yield(memo, n) 
					end
				end
		else
				memo = self.shift  
				(self.count).times do
					n = self.shift 
					if parameter[0].is_a? Symbol
			   			memo = memo.send(parameter[0], n) 
					else
			 		    memo = yield(memo, n) 
					end
				end
		end
		memo
	end

end