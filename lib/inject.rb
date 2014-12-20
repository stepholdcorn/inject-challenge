class Array

	def my_inject(&block)
		block.call(self)
		memo = self.shift 
		(self.count).times do
			n = self.shift 
			memo = block.call(memo, n) 
		end
		memo
	end

end