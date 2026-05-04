# Title

## Pre-watch questions
1. what is pre partitioning?
2. How does pre partitioning increase performance?

## Chunk 1
Pre-partitioning
Pre-partitioning
enhance columns late

## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`


### 3 main points
1. Use pre-aggregation - do any aggregations or reduce bys before the join so we join (shuffle) less data
2. Use pre-partitioning (co-partition) - try to keep data that you will be joining in same partitions by using same partition scheme for both and thus you pay early for the shuffle.
3. Use pre-filtering - filter before joins so we are moving less rows during shuffles.



### Plain English
pre-partition, co-partition, pre-filter are all techniques to optimize performance and should be done before joins

## Chunk 1 compressed
Concept: Doing certain things before joins make the joins faster
Why it matters: Joins are very common and this will make them faster when using RDDs.
Example: If trying to find the honor role students. Partition both data sets by user id into X partitions. Do aggregations on their grades to get their overall grade. Then filter for certain honor role grade critera. Finally Join on userId. 
One confusion: RDDs do not do query plans or column pruning or pre-filtering for you like Spark DFs do when possible. So you have to make sure to do this.
