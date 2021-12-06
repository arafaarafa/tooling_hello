frontend: main.c
	gcc -E main.c -o main.i
middleend: main.c
	gcc -S main.c -o main.s
backend: main.c
	gcc -c main.c -o main.o
linker: main.c
	gcc -o main main.c
bulid: main.c
	make frontend
	make middleend
	make backend
	make linker

run:main.c
	./main.exe
bulid_run: main.c
	make bulid
	make run
