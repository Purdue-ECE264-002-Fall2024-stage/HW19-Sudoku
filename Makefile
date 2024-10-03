WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR) 
VAL = valgrind --tool=memcheck --log-file=vallog --leak-check=full --verbose
TESTFALGS = -DTEST_CONVERT -DTEST_READLIST -DTEST_DELETELIST -DTEST_ADDNODE -DTEST_DELETENODE 

SRCS = main.c sudoku.c
OBJS = $(SRCS:%.c=%.o)

hw19: $(OBJS)
	$(GCC) $(OBJS) -o hw19

convert: converter.o
	$(GCC) converter.o -o converter

.c.o: 
	$(GCC) $(TESTFALGS) -c $*.c 

testall: test1 test2 test3 test4 test5 test6 test7 test8 test9 test10

test1: hw19
	./hw19 inputs/test1 > output1
	diff output1 expected/expected1

test2: hw19
	./hw19 inputs/test2 > output2
	diff output2 expected/expected2

test3: hw19
	./hw19 inputs/test3 > output3
	diff output3 expected/expected3

test4: hw19
	./hw19 inputs/test4 > output4
	diff output4 expected/expected4

test5: hw19
	./hw19 inputs/test5 > output5
	diff output5 expected/expected5

test6: hw19
	./hw19 inputs/test6 > output6
	diff output6 expected/expected6

test7: hw19
	./hw19 inputs/test7 > output7
	diff output7 expected/expected7

test8: hw19
	./hw19 inputs/test8 > output8
	diff output8 expected/expected8

test9: hw19
	./hw19 inputs/test9 > output9
	diff output9 expected/expected9

test10: hw19
	./hw19 inputs/test10 > output10
	diff output10 expected/expected10

memory: hw19
	$(VAL) ./hw19 inputs/test1 > output1

clean: # remove all machine generated files
	rm -f hw19 *.o output* vallog *bin
