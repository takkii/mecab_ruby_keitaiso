# frozen_string_literal: true

require 'mecab'
require 'natto'

# Elecjar top-level class
class Elecjar
  def hashi
    m = MeCab::Tagger.new('-Owakati')
    word = Hash.new(0)
    begin
    files = File.open(ARGV[0])
    text = files.read
    m.parse(text).scan(/(?:[ぁ-ヶ]|[亜-黑]|[a-zA-Z_0-9]|ー)+/) { |str| word[str] += 1 }
    print word.sort_by { |k, v| k <=> v }
    end
  rescue Errno::ENOENT
    puts '読み込みファイルを指定してください'
  rescue Errno::EACCES
    puts 'ファイルへアクセス権限がありません'
  rescue LoadError
    puts '対象ファイルがありません'
  else
  ensure
    files.close
  end
end

puts '※ ワードカウント ["わかち書き" , カウント数]'
puts ''
puts ' Mecab_wordcount_Start '.center(80, '-')
puts ''
Elecjar.new.hashi
puts ''
puts ' Mecab_wordcount_End '.center(80, '-')
puts ''

__END__
