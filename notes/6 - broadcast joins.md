# Title

## Pre-watch questions
* What is spark used for?
* How does it work?
* Why do people use it?
* What are the best practices?


## Chunk 1
(only write concepts)


## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`

### plain english
if one df is smaller than other then use broadcast join
broadcast join will send over copy of smaller table to all partitions of larger one
catalyst will auto broadcast join if it can detect that one table is small enough and the "small enough" factor can be configured in spark parameters
broadcast joins could hurt performance if smaller table is very large which can cause large overhead or OOM issues

## Chunk 1 compressed
Concept: make joins faster if one table is much smaller than other.
Why it matters: makes certain joins faster
Example: ...
One confusion: if you do describe it will say broadcast exchange however unlike most times you see exchange this does not indicate a shuffle, so no shuffle involved w/ broadcast join.

