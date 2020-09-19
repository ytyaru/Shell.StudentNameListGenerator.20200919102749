#!/usr/bin/env bash
# TSVファイルのパスや内容を取得する。
DB_Path() { # (yk|ky)_(oo|om)_(m|f|c|mc|fc|cm|cf).tsv
	echo "$APP_ROOT/dic/${1,,}/${2,,}/${3,,}.tsv"
}
DB() { # $1=yk|ky $2=oo|om $3=m|f|c|mc|fc|cm|cf|M|F|C|*
	AllDbPath() { for SEX in m f c mc fc cm cf; do { echo "$(DB_Path $1 $2 $SEX)"; } done; }
	MaleDbPath() { for SEX in m c mc cm; do { echo "$(DB_Path $1 $2 $SEX)"; } done; }
	FemaleDbPath() { for SEX in f c fc cf; do { echo "$(DB_Path $1 $2 $SEX)"; } done; }
	CommonDbPath() { for SEX in c mc fc cm cf; do { echo "$(DB_Path $1 $2 $SEX)"; } done; }
	DB_PATH=()
	case "$1" in
	'*') IFS=$'\n'; DB_PATH+=($(AllDbPath $1 $2)); ;;
	'M') IFS=$'\n'; DB_PATH+=($(MaleDbPath $1 $2)); ;;
	'F') IFS=$'\n'; DB_PATH+=($(FemaleDbPath $1 $2)); ;;
	'C') IFS=$'\n'; DB_PATH+=($(CommonDbPath $1 $2)); ;;
	*) DB_PATH+=($(DB_Path "$1" "$2" "$3")); ;;
	esac
	echo -e "$(IFS=$'\n'; echo "${DB_PATH[*]}")" | xargs -I@ cat @
}
