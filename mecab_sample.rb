require 'mecab'
require 'natto'

puts ''
puts 'Mecab_Start'.center(80,'-')
puts ''

m = MeCab::Tagger.new('-Owakati')
nx = Natto::MeCab.new

begin
	file = File.open(ARGV[0])
	text = file.read

	p m.parse(text).split(' ')
	
	puts ''
	puts 'Mecab_End'.center(80,'-')
	puts ''
	puts 'Natto_Start'.center(80,'-')
	puts ''
	puts nx.parse(text) do |x|
	puts '#{x.feature}\t#{x.surface}'
end

rescue SystemCallError => ex
	puts ex.backtrace
rescue IOError => ee
	puts ee.backtrace
rescue Exception => e
	puts e.backtrace
else

ensure
	file.close

	puts ''
	puts 'Natto_End'.center(80,'-')
end
