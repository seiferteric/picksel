picksel
=======

Simplest possible graphics wrapper for rubysdl to just draw some pixels!


I was tired of boilerplate graphics code, so this just sets up the window and has simple functions to draw pixels to the screen
since I often want to do this for graphics tests. It lets me cut the crap and draw some pixels!


Example:

    require_relative "picksel"
    
    pixel 200, 200, color(0, 255, 0)

    wait
  
You just drew a pixel! (And will wait until escape is pressed). If you want a different sized window add this before your first pixel:

    window 800, 800
    
Thats it!
