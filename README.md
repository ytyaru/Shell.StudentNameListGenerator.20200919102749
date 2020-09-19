[ja](./README.ja.md)

# Shell.StudentNameListGenerator.20200919102749

Randomly generate a name-list.

# DEMO

```sh
$ sn.sh
あさか	ひさはる	浅積	央春
しかや	かずなお	四日谷	和眞
りきとく	とき	力徳	杜樹
しもみや	とよひこ	下宮	仁彦
ふるきど	たつし	古城戸	幸嗣
のぶとも	ゆいき	信朝	ゆいき
きくい	いっけい	菊井	一馨
なかくす	れある	中楠	怜安琉
しょうさく	ゆきあき	少作	幸哲
こしばえ	しょうま	小椎八重	少摩
かせやま	りょく	忰山	旅空
ののがき	ひょう	野々垣	平
いずうら	しげのぶ	泉浦	茂宜
きしわだ	しょうよう	岸和田	笑陽
たけかさ	もとや	武笠	元耶
しゅくざわ	やすひと	宿沢	康仁
よりなが	はゆき	頼永	颯雪
なかつみ	ひでゆき	中津海	秀之
かんこ	よしいえ	神戸	芳営
いるべ	らく	入部	絡
ふるくち	るりあ	古口	琉梨愛
はなたに	こまち	花谷	こまち
おおこ	ちさか	大古	千紗華
はる	あきえ	春	知恵
くにおく	あんじゅ	国奥	庵十
のいしき	いちな	野一色	壱奈
しょうげん	はやか	正源	隼果
いおさき	きずく	庵崎	希寿玖
せき	みり	碩	みり
よりもと	みくの	寄本	美久乃
いきなが	みみか	生永	美々華
みぞくち	めり	溝口	女璃
いちいし	ことは	市石	琴波
まるの	ゆりの	丸野	柚李乃
うすかわ	くみ	薄川	久心
つちしだ	ひふみ	土志田	日歩美
いちまさ	ほほみ	一政	穂々弥
かみいし	とこは	上石	常葉
かつざわ	みふゆ	勝澤	美芙有
やまど	めぶき	山門	芽ぶき
```
```sh
$ time sn.sh
...
real	0m1.708s
user	0m0.001s
sys	0m0.076s
```

# Features

* Output names for 40 people
    * Full name
    * Male-Female ratio 1:1

# Requirement

* <time datetime="2020-09-19T10:27:44+0900">2020-09-19</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/Shell.StudentNameListGenerator.20200919102749
```

# Usage

```sh
cd Shell.StudentNameListGenerator.20200919102749/src
./sn.sh
```

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

