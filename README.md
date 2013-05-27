walking_girl
============

A very simple protype I made with Lua and the game engine Love2d

I'm pretty much new to lua and love2d so I decided to take some baby steps. I was browsing in a site that holds free resources
for games when I found a sprite image that holds the animation of a girl walking. I decided to just make something move around 
the screen using this sprite to make the animation.

I found two minor challengues to this endeavour. The first one was that there is no left animation, so I had to make the right
animation to do a horizontal flip to use it as the left animation. Fortunately love2d has a Quad:flip method to adress this.

The other one was the animation. At first I was using the update callback of the engine, but this was firing up too fast. So I 
used instead the keydown callback. The animation is now visible but having to tap the keys over and over to move is not something
I liked. 

I also wanted to experiment with tables as objects and hold useful attributes and functions there. I really liked the approach, 
I just need to learn a little bit more about the subject. I still don't reach the OOP chapter on my book :)
 
 
Install
=======

Just download the love2d v0.8.0 game engine
Set it up in your command line using an alias
And then just type 'love path/to/this/folder'
