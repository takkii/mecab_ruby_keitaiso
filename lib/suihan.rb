# frozen_string_literal: true

require 'mecab'
require 'natto'

# Elecjar top-level class
class Elecjar
  def water
    m = MeCab::Tagger.new('-Owakati')
    begin
    file = File.open(ARGV[0])
    text = file.read
    p m.parse(text).split(' ')
    end
  rescue Errno::ENOENT
    puts '読み込みファイルを指定してください'
  rescue Errno::EACCES
    puts 'ファイルへアクセス権限がありません'
  rescue LoadError
    puts '対象ファイルがありません'
  else
  ensure
    file.close
  end
end

puts ''
puts '※ わかち書き'
puts ''
puts ' Mecab_wakati_Start '.center(80, '-')
puts ''
Elecjar.new.water
puts ''
puts ' Mecab_wakati_End '.center(80, '-')
puts ''

__END__
