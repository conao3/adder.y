all: bison-adder

bison-adder: bison-adder.tab.c bison-adder.yy.c
	gcc -o $@ $< -ll -ly

%.yy.c:%.l
	flex -o $@ --header-file=$*.yy.h $<

%.tab.c:%.y
	bison -o $@ -d $<

clean:
	git clean -fdx
