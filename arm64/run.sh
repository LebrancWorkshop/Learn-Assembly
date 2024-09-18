as -o "$1".o "$1".s &&
ld -o "$1" "$1".o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 &&
./"$1" &&
rm "$1" "$1".o

