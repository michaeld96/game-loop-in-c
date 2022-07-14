# Game Loop with C 

### Note to Reader: 
These are notes based on a course from Pikuma. These notes are for my personal use, but really anyone can use them. This is the best way for me to learn is by taking extensive notes on everything and taking apart everything piece by piece. If you find these notes helpful, great! 

## Game Loop

```cpp
setup();

while(TRUE)
{
    process_input();
    update();
    draw();
}
```

Above is the most basic idea behind a game loop. We have a function `setup()` that display the screen and get the environment ready for the game. Then we will run a forever loop `while(TRUE)`. In this loop we will get input from the user by `process_input()` then we will update the game based on these inputs by `update()` and then `draw()` the results to the page. This is the basic idea behind a game loop and will kickstart us with the idea that everything will happen inside this loop.

## Building Code

When we want to build our code in `.c` we will use a couple of unique things. First, lets go to the parent folder of our program. Let's say our file is called `src`. We will run the following command:

```
gcc -Wall -std=c99 ./src/*.c -o main
```
The *nix command above is saying, use the `gcc` compiler with the following flags. The flag `-Wall` means show any errors that may occur when building this program. Flag `-std=c99` means we will compile the `.c` files with the `c99` standard. What `./src/*.c` means is that every `.c` file in `src` is what we want to compile. Flag `-o main` means our output, `-o`, is going to be called `main`. What all this does is creates a executable for our computer to run.

## Makefile

So we ran this code above, but do we have to type it in every time we want to make a new executable? No we don't! This is where Makefile comes in. What Makefile does, it makes our commands into one single statement. First, we will make a file simply called Makefile. In this Makefile we will make commands then follow them with a `:` 

Here is an example:
```Makefile
# Need to manually hit tab for this makefile 
# code to work properly when you're inside a function.
build:
	gcc -Wall -std=c99 ./src/*.c -o main

# If we want to run this file we can simply call run.
run:
	./main

clean: 
	rm main
```

As we see above, when we are in a shell (terminal), we can run the simple command of `make build` and it will run the command that we've assigned to it. If we want to remove our executable we simply run `make clean`. *Note: When typing just `make` this will rune the first command in our Makefile.*

## Making a Window with SDL
What we are going to do it first look at the code, and then run thru what certain things mean.