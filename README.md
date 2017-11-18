### 〜 Rubyでめかぶと納豆を使った形態素解析ツールご飯シェルを作りました 〜

Ruby Advent Calendar 2017で使用したコードの記録です。

作ったコードをベースにシェル化しました。より使いやすくなっています。

朝食に、めかぶとごはん。または、納豆とごはん。毎朝、食べてますか？

mecab_sample.rb→gohan.rbに変更しました。朝食にごはん、食べましょう。

> git clone https://github.com/takkii/mecab_ruby_keitaiso.git

ログインシェルがfishならば↓の記述を追加します。

> set -x PATH ~/mecab_ruby_keitaiso/bin $PATH

設定を反映後、gohanシェルを使うことができるようになります。

> gohan Example.txt

サンプルコード実行し形態素解析することができます。

*UbuntuなどのLinuxカーネルでRubyとmecabとnattoの環境構築していることが前提です*
