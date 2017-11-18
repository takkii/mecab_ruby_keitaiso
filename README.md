# Rubyでめかぶと納豆を使った形態素解析ツール、ご飯シェルを作りました。

Ruby Advent Calendar 2017で使用したコードの記録です。

朝食に、めかぶとごはん。または、納豆とごはん。毎朝、食べてますか？

mecab_sample.rb→gohan.rbに変更しました。朝食にごはん、食べましょう。

> git clone https://github.com/takkii/mecab_ruby_keitaiso.git

fishシェルならば↓の記述を追加します。

> set -x PATH ~/mecab_ruby_keitaiso/bin $PATH

gohanを使うことができるようになります。

> gohan Example.txt

サンプルコード実行し形態素解析することができます。

*UbuntuなどのLinuxカーネルでmecabとnattoをインストールしていることが前提です*
