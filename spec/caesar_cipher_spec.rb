require 'caesar_cipher'

describe 'encrypt' do

	it 'shifts a letter down the alphabet by a given number' do
		expect(encrypt('a', 2)).to eq('c')
	end

	it 'encrypts a whole word' do
		expect(encrypt('abc', 3)).to eq('def')
	end

	it 'retains whitespace' do
		expect(encrypt('a ', 2)).to eq('c ')
	end

	it 'retains special characters and numbers' do
		expect(encrypt('abc?!# 123', 3)).to eq('def?!# 123')
	end

	it 'encrypts multiple words' do
		expect(encrypt('aaa bbb ccc', 1)).to eq('bbb ccc ddd')
	end

	it 'keeps chars as letters and retains case' do
		expect(encrypt('xyz', 3)).to eq('abc')
	end

	it 'shifts by a large number' do
		expect(encrypt('Hello, my name is Daniel.', 933295)).to eq('Gdkkn, lx mzld hr Czmhdk.')
	end

end