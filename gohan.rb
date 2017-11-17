require 'mecab'
require 'natto'

puts ''
puts ' Mecab_wakati_Start '.center(80,'-')
puts ''

m = MeCab::Tagger.new('-Owakati')
nx = Natto::MeCab.new
word = Hash.new(0)

begin
	file = File.open(ARGV[0])
	text = file.read

	p m.parse(text).split(' ')

	puts ''
	puts ' Mecab_wakati_End '.center(80,'-')
	puts ''
	puts ' Mecab_wordcount_Start '.center(80,'-')
	puts ''
	
	m.parse(text).scan(/(?:[ぁ-ヶ]|[亜-黑]|[a-zA-Z_0-9]|ー)+/) {|str| word[str] += 1}
	print word.sort_by{|k, v| k <=> v}

	puts ''
	puts ' Mecab_wordcount_End '.center(80,'-')
	puts ''
	puts ' Natto_keitaiso_Start '.center(80,'-')
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
	puts ' Natto_keitaiso_End '.center(80,'-')
end
