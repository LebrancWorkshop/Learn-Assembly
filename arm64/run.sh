# Assembly 
as -o "$1".o "$1".s &&


# Linking
ld -o "$1" "$1".o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 &&


# Run
./"$1" &&


# Clean
rm "$1" "$1".o

