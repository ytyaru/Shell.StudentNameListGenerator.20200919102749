#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# クラス名簿をランダム生成する。
# CreatedAt: 2020-09-19
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$HERE";
	NUM=40
	FirstNames() { "$APP_ROOT/lib/Shell.JapaneseFirstNameGenerator.20200918080000/src/jfn.sh" g -n $NUM -r E; }
	LastNames() { "$APP_ROOT/lib/Shell.JapaneseLastNameGenerator.20200912074709/src/jln.sh" g -n $NUM; }
	paste <(LastNames) <(FirstNames) | sort | awk -F "\t" 'BEGIN{ OFS="\t"; } {print $1,$3,$2,$4}'
}
Run
