# Title

## Pre-watch questions
* what is diff in performance between df and rdds in terms of performance?
* when to use df vs rdd?


## Chunk 1
(only write concepts)

toDF


## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`

### 3 main points
1. do not change api levels its expensive.
2. use dataframes most of times to let spark optimize for you


### Plain english
Dataframes do optimizations for you rdds let you manually control and do more but dont have default optimizations. 
Dataframes might skip some steps if they can see it wont be necessary for actual action. 

## Chunk 1 compressed
Concept: df api use most of time and use rdd sometimes but never switch between them in same job
Why it matters: know which api to use for which case
Example: use df when you want auto optimization from spark and rdd if you want more control of actual plan that occurs 
One confusion: spark will do some optimizations so it can skip certain steps in jobs from occuring if it notices it wont effect final results.

