require 'inject'

describe Array do

	context 'with a block' do
	
		it 'should sum numbers' do
			expect([1,2,3,4].inject{ |memo, n| memo + n }).to eq(10)
			expect([1,2,3,4].my_inject{ |memo, n| memo +n }).to eq(10)
		end

		it 'should subtract numbers' do
			expect([1,2,3,4].inject{ |memo, n| memo - n }).to eq(-8)
		end

		it 'should multiply numbers' do
			expect([1,2,3,4].inject{ |memo, n| memo * n }).to eq(24)
		end

	end

end