### 〜 Rubyでめかぶと納豆を使った形態素解析ツールご飯(rice)シェルを作りました 〜

Ruby Advent Calendar 2017で使用したコードの記録です。

作ったコード(gohan.rb)をベースにシェル化(rice)しました。より使いやすくなっています。

朝食に、めかぶとごはん。または、納豆とごはん。毎朝、食べてますか？

米を炊飯して、朝食にごはんと納豆やめかぶを食べましょう。

2020年6月5日、Macカタリナで動作確認しました。

*※「例」HOME(~/)に保存したことを想定しています。*

```markdown
git clone https://github.com/takkii/mecab_ruby_keitaiso.git

(.bashrc or .zshrc)

export RICE_HOME=$HOME/mecab_ruby_keitaiso
export PATH="$RICE_HOME/bin:$PATH"
```

設定を反映後、riceシェルを使うことができるようになります。

> rice Example.txt

> suihan Example.txt

> kome Example.txt

シェルを実行することでわかち書き、カウント、形態素解析することができます。

[riceシェルの組み立て方](http://takkii.hatenablog.com/entry/2017/11/22/215228)

```markdown
ブログのリンク、Googleドライブからダウンロード
→ ./configure → make → sudo make install
→ mecab.hの場所を指定する

※ $HOME/mecab-0.996 (設置例)

cd mecab_ruby_keitaiso
bundle config build.mecab --with-cppflags=-I$HOME/mecab-0.996/src
bundle install
```