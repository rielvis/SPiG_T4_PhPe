# SPiG_T4_PhPe
This is my 4th task (3rd piece) for Specialist Practice in Gaming at ARUP.
This piece aims to demonstrate a strong understanding and application of game physics and performance.

## Tutorial Process Explanation
I followed two tutorials: a [Godot 2D physics tutorial](https://www.youtube.com/watch?v=TyXx3B1_lhA) and a [Godot object pooling tutorial](https://www.youtube.com/watch?v=lJRqKJQVjf4). 

The physics tutorial work explored Godot’s “Physics Materials” which can be used to adjust how a physics object interacts with other physics objects. The scene built for this work was encapsulated in a StaticBody2D boundary using world-boundary colliders, which provides collision but is limited in how it interacts physically in the game. Inside these boundaries, some standard balls and boxes using the RigidBody2D node were dropped in to see how they interact with each other, and some Area2D nodes were used to create alternative gravity fields for those RigidBody2D nodes. 

The object pooling tutorial work aimed to explore a programming technique to save on system resource usage. Object pooling saves on memory and processing power by having a set number of game objects preloaded into a scene and then reused when they are needed. To demonstrate this, the work is supposed to be a spaceship where, when the player clicks, bullets shoot out from the ship. An array variable was used to pool the objects. 

## Personal Learning Reflection
The 2D physics tutorial made full sense to me, however I had some trouble with the object pooling tutorial. 

Although I understand the design behind object pooling and how it helps optimise performance, I found it difficult to understand how the array variable was being used to implement this technique. Furthermore, despite following the steps shown in the tutorial, my game still lagged and occasionally crashed. I managed to resolve the crashing by lowering the maximum number of objects pooled, and although this work introduced me to for loops in my code which I am confident with now, I still do not fully understand how an array works. 

This lack of understanding around arrays is a clear gap in my skills as a programmer. I am marginally aware of what an array is from a mathematical perspective, but it is far from a full understanding which is hindering my ability to put it into practice. 

Moving forward, I need to seek resources to improve my mathematics relevant to programming. Afterwards, or alongside that improvement, I should seek some array tutorials that break down the concept more so I can better digest it. 

## Evidence and Explanation of Tutorial Iteration for Refinement or Correction
...

## Demonstration of Original Work
...
