[ja](./README.ja.md)

# Shell.JapaneseFirstNameGenerator.20200918080000

Randomly generate names excluding Japanese first names.

# DEMO

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

# Features

* Output the "reading" and "notation" of the name
* Output name is unique
* You can specify the number of outputs
* You can narrow down the output name by gender
* The output name can be 1:1 for men and women

# Requirement

* <time datetime="2020-09-10T18:08:51+0900">2020-09-10</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000
```

# Usage

```sh
cd Shell.JapaneseFirstNameGenerator.20200918080000/src
./jfn.sh
```

* [help.txt](https://raw.githubusercontent.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000/master/src/doc/help.txt)

## Subcommand

Subcommands|Overview
-----------|--------
generate [-n NUM] [-s SEX] [-r RATE]|Randomly generate. (Default)
select value ... |Extract with ambiguous condition specification.
extract [-s SEX] [-fbperFBPER COND] ...|Extract with accurate conditions.

Display help and version.

```sh
./jfn.sh -h
./jfn.sh -v
```

Output the name randomly.

```sh
./jfn.sh
./jfn.sh g
./jfn.sh g -n 5
./jfn.sh g -s m
./jfn.sh g -r e
./jfn.sh g -n 5 -r e
```

Search by partial match from the "reading" and "notation" of the name.

```sh
./jfn.sh s 'あか'
./jfn.sh s '赤'
./jfn.sh s 'あか' '赤'
```

Search by specifying prefix match, suffix match, partial match, exact match, and regular expression for the "reading" and "notation" of the name.

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

# Note

* `-s * -r E` can duplicate the name of `c`
* When `-n -1`, it takes nearly 1 minute to execute: [execution_time.md](https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000/blob/master/note/execution_time.md)

# Related repositories

* [Shell.JapaneseFirstNameTsv.OneToOne.20200915080720](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToOne.20200915080720)
* [Shell.JapaneseFirstNameTsv.OneToMany.20200915092647](https://github.com/ytyaru/Shell.JapaneseFirstNameTsv.OneToMany.20200915092647)
* [Shell.LastNameGenerator.20200902095536](https://github.com/ytyaru/Shell.LastNameGenerator.20200902095536)

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

