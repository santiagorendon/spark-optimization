# Title

## Pre-watch questions
what is column pruning?
why does it enhance performance?

## Chunk 1
(only write concepts)


## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`


### 3 main points
1. Only include minimum amount of columns neccessary this is called column pruning.
2. When doing joins do map side operations on smaller of the tables either the table before the join or the table after the join depending on which is the smaller of the two. 
3. spark will automatically do column pruning when it detects you are only using a few in selects or in joins. However it does not always work so its best practice for you to only include neccessary columns

## Chunk 1 compressed
Concept: include minimum columns needed for job and do map-side operations on smaller table on joins (before join vs after join which table is smaller is the one you do map operation on)
Why it matters: These are manualoptimizations you can make to make the jobs faster.
Example: if you are reading a huge df and doing a lot of operations only select the neccessary columns that you actually need in calculations.
One confusion: spark will not always do auto pruning for you so its good for you to only include minimum columns needed.

