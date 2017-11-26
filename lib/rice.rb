# frozen_string_literal: true

require 'mecab'
require 'natto'

# Elecjar top-level class
class Elecjar
  def costar_chawan
  nx = Natto::MeCab.new
  begin
    file2 = File.open(ARGV[0])
    texts = file2.read
    puts nx.parse(texts) do |x|
    puts "#{x.feature}\t#{x.surface}"
    end
  rescue Errno::EACCES
    puts 'ファイルへアクセス権限がありません'
  rescue LoadError
    puts '対象ファイルがありません'
  ensure
    file2.close
  end
  end
end

puts '※ Nattoで形態素解析'
puts ''
puts ' Natto_keitaiso_Start '.center(80, '-')
puts ''
Elecjar.new.costar_chawan
puts ''
puts ' Natto_keitaiso_End '.center(80, '-')

__END__
