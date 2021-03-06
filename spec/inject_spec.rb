require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
require 'inject'

describe Array do

	context 'with a block' do
	
		it 'should sum numbers' do
			expect([1,2,3,4].inject { |memo, n| memo + n }).to eq(10)
			expect([1,2,3,4].my_inject { |memo, n| memo + n }).to eq(10)
		end

		it 'should subtract numbers' do
			expect([1,2,3,4].inject { |memo, n| memo - n }).to eq(-8)
			expect([1,2,3,4].my_inject { |memo, n| memo - n }).to eq(-8)
		end

		it 'should multiply numbers' do
			expect([1,2,3,4].inject { |memo, n| memo * n }).to eq(24)
			expect([1,2,3,4].my_inject { |memo, n| memo * n }).to eq(24)
		end

	end

	context 'with a symbol' do

		it 'should sum numbers' do
			expect([1,2,3,4].inject(:+)).to eq(10)
			expect([1,2,3,4].my_inject(:+)).to eq(10)
		end

		it 'should subtract numbers' do
			expect([1,2,3,4].inject(:-)).to eq(-8)
			expect([1,2,3,4].my_inject(:-)).to eq(-8)
		end

		it 'should multiply numbers' do
			expect([1,2,3,4].inject(:*)).to eq(24)
			expect([1,2,3,4].my_inject(:*)).to eq(24)
		end
	
	end

	context 'with a symbol and an argument' do

		it 'should sum numbers' do
			expect([1,2,3,4].inject(2, :+)).to eq(12)
			expect([1,2,3,4].my_inject(2, :+)).to eq(12)
		end

		it 'should subtract numbers' do
			expect([1,2,3,4].inject(2, :-)).to eq(-8)
			expect([1,2,3,4].my_inject(2, :-)).to eq(-8)
		end

		it 'should multiply numbers' do
			expect([1,2,3,4].inject(2, :*)).to eq(48)
			expect([1,2,3,4].my_inject(2, :*)).to eq(48)
		end

	end

	context 'with a block and an argument' do

		it 'should sum numbers' do
			expect([1,2,3,4].inject(2) { |memo, n| memo + n }).to eq(12)
			expect([1,2,3,4].my_inject(2) { |memo, n| memo + n }).to eq(12)
		end

		it 'should subtract numbers' do
			expect([1,2,3,4].inject(2) { |memo, n| memo - n }).to eq(-8)
			expect([1,2,3,4].my_inject(2) { |memo, n| memo - n }).to eq(-8)
		end

		it 'should multiply numbers' do
			expect([1,2,3,4].inject(2) { |memo, n| memo * n }).to eq(48)
			expect([1,2,3,4].my_inject(2) { |memo, n| memo * n }).to eq(48)
		end

	end

end
