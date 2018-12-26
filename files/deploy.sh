#! /bin/bash
OUTPUT_DIRECTORY=.
while (( "$#" )); do
	case "$1" in
	-o)
		OUTPUT_DIRECTORY=$2
		shift 2
		;;
	esac
done
mkdir -p ${OUTPUT_DIRECTORY}
yes | unzip -d ${OUTPUT_DIRECTORY} /usr/local/lib/antlr4-cpp-runtime-*-source.zip

