# SPiG_T4_PhPe
This is my 4th task (3rd piece) for Specialist Practice in Gaming at ARUP.
This piece aims to demonstrate a strong understanding and application of game physics and performance.

### Guide to Project Folders
2D Physics Tutorial Work
> res://physics_tutorial/

Object Pooling Tutorial Work
> res://object_pooling_tutorial/

Original Pinball Game Work
> res://pinball_game/

## Tutorial Process Explanation
I followed two tutorials: a [Godot 2D physics tutorial](https://www.youtube.com/watch?v=TyXx3B1_lhA) and a [Godot object pooling tutorial](https://www.youtube.com/watch?v=lJRqKJQVjf4). 

The physics tutorial work explored Godot’s “Physics Materials” which can be used to adjust how a physics object interacts with other physics objects. The scene built for this work was encapsulated in a StaticBody2D boundary using world-boundary colliders, which provides collision but is limited in how it interacts physically in the game. Inside these boundaries, some standard balls and boxes using the RigidBody2D node were dropped in to see how they interact with each other, and some Area2D nodes were used to create alternative gravity fields for those RigidBody2D nodes. 

The object pooling tutorial work aimed to explore a programming technique to save on system resource usage. Object pooling saves on memory and processing power by having a set number of game objects preloaded into a scene and then reused when they are needed. To demonstrate this, the work is supposed to be a spaceship where, when the player clicks, bullets shoot out from the ship. An array variable was used to pool the objects. 

## Personal Learning Reflection
The 2D physics tutorial made full sense to me, however I had some trouble with the object pooling tutorial. 

Although I understand the design behind object pooling and how it helps optimise performance, I found it difficult to understand how the array variable was being used to implement this technique. Furthermore, despite following the steps shown in the tutorial, my game still lagged and occasionally crashed. Although this work introduced me to for loops in my code which I am confident with now, I still do not fully understand how an array works and my solution to this crashing was very rudimentary.

This lack of understanding around arrays is a clear gap in my skills as a programmer. I am marginally aware of what an array is from a mathematical perspective, but it is far from a full understanding which is hindering my ability to put it into practice. 

Moving forward, I need to seek resources to improve my mathematics relevant to programming. Afterwards, or alongside that improvement, I should seek some array tutorials that break down the concept more so I can better digest it. 

## Evidence and Explanation of Tutorial Iteration for Refinement or Correction
(See **Demonstration of Original Work**)

## Demonstration of Original Work
Using the techniques I learned from the tutorial work here and in previous tasks, I created a small pinball style game. On top of making the flippers controlled by the player which used an AnimatableBody2D node (an extension of the StaticBody2D node with additional physics capabilities) I used the RigidBody2D balls made from the physics tutorial, though I created another ball object as the "bumpers". The bumpers are larger and have a bounce factor enabled, so that the smaller balls are "bumped" by them.

I also programmed the smaller balls with a new script that teleports them back into the game area when they reach out of bounds through the gap between the flippers. This way, the game continues without needing to instantiate them.
