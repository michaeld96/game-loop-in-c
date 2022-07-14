# Need to manually hit tab for this makefile 
# code to work properly when you're inside a function
build:
	gcc -Wall -std=c99 ./Game-Loop-Imp/*.c -o game

# If we want to run this file we can simply call run.
run:
	./game

clean: 
	rm game