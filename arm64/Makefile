assembly:
	as -o main.o main.s

link:
	ld -o main main.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

run:
	./main

app:
	make assembly
	make link
	make run
