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