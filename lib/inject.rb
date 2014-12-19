class Array

	def my_inject(&block)
		block.call(self)
		memo = self.shift 
		(self.count).times do
		n = self.shift 
		memo = memo + n 
		end
		return memo
	end

end


