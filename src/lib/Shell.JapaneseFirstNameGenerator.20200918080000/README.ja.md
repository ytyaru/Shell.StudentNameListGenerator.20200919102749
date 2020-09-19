[en](./README.md)

# Shell.JapaneseFirstNameGenerator.20200918080000

　日本人の名字を除く名前を重複せずランダムに生成する。

# デモ

```sh
$ jfn.sh
みちのぶ	道信
あづみ	亜津魅
としひで	寿秀
いくや	生弥
ふみと	史音
かいどう	凱道
りょうへい	澪平
せいら	惺一空
れんげ	漣花
かずひで	一秀
えいか	瑛海
ぜんた	善汰
ほうせい	峯生
すみか	澄海
りえ	理愛
ともかず	友和
うみほ	海朋
らぶ	羅舞
ひよな	妃陽菜
きりん	輝凛
きあら	絆愛
かずと	一颯
かいら	海萊
とうじ	燈路
るね	輝音
もあ	萌夢
ひろの	広埜
こうが	空雅
まなえ	愛永
ゆつき	唯月
```

# 特徴

* 名前の「読み」と「表記」を出力する
* 出力する名前は重複しない
* 出力件数を指定できる
* 出力する名前を性別で絞れる
* 出力する名前を男女比1対1にできる

# 開発環境

* <time datetime="2020-09-10T18:08:51+0900">2020-09-10</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# インストール

```sh
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000
```

# 使い方

```sh
cd Shell.JapaneseFirstNameGenerator.20200918080000/src
./jfn.sh
```

* [help.txt](https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000/master/src/doc/help.txt)

## サブコマンド

サブコマンド|概要
------------|----
generator [-n NUM] [-s SEX] [-r RATE]|ランダム生成する。（デフォルト）
selector 値 ...|曖昧な条件指定で抽出する。
extractor [-s SEX] [-fbperFBPER COND] ...|正確な条件指定で抽出する。

　ヘルプやバージョンを表示する。

```sh
./jfn.sh -h
./jfn.sh -v
```

　名前をランダムに出力する。

```sh
./jfn.sh
./jfn.sh g
./jfn.sh g -n 5
./jfn.sh g -s m
./jfn.sh g -r e
./jfn.sh g -n 5 -r e
```

　名前の「読み」や「表記」から部分一致で検索する。

```sh
./jfn.sh s 'あか'
./jfn.sh s '赤'
./jfn.sh s 'あか' '赤'
```

　名前の「読み」や「表記」に対して、前方一致、後方一致、部分一致、完全一致、正規表現を指定して検索する。

```sh
./jfn.sh -f 'たろ'
./jfn.sh -b 'ろう'
./jfn.sh -p 'ろ'
./jfn.sh -e 'たろう'
./jfn.sh -r '.*(すけ|たろう|へい|べい|ぺい|へえ|べえ|ぺえ)$'
./jfn.sh -f '太'
./jfn.sh -b '郎'
./jfn.sh -p '々'
./jfn.sh -e '太郎'
./jfn.sh -r '^太.{1,}$'

./jfn.sh -F 'たろ'
./jfn.sh -B 'ろう'
./jfn.sh -P 'かさ'
./jfn.sh -E 'たろう'
./jfn.sh -R '.*(すけ|たろう|へい|べい|ぺい|へえ|べえ|ぺえ)$'
./jfn.sh -F '太'
./jfn.sh -B '郎'
./jfn.sh -P '々'
./jfn.sh -E '太郎'
./jfn.sh -R '^太.{1,}$'

./jfn.sh -f 'たろ' -B 'ろう'
./jfn.sh -f '太' -B '郎'
./jfn.sh -f 'たろ' -B 'ろう' -f '太' -B '郎'
```

# 注意

* `-s * -r E` のときは `c` の名前が重複しうる
* `-n -1` のときは実行に1分近くかかる: [execution_time.md](https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000/blob/master/note/execution_time.md)

# 関連リポジトリ

* [Shell.JapaneseFirstNameTsv.OneToOne.20200915080720](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720)
* [Shell.JapaneseFirstNameTsv.OneToMany.20200915092647](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647)
* [Shell.LastNameGenerator.20200902095536](https://github.com/ytyaru/Shell.LastNameGenerator.20200902095536)


# 著者

　ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# ライセンス

　このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

