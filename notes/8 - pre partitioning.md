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
1. partition early as possible so spark does not have to 
2. if doing a join partition on the same key so that the two tables live in same partitions (co-partitioned)
3. Spark will partition it by the join id as late as possible by default but you can manually partition it earlier and avoid shuffles.
4. Decorate your data later, especially if you have lots of transformations. ex: we decorated early and thus had to transfer more data during shuffles.

If you partition late at BEST you do what spark does out of the box but at WORST you get worse performance than not partitioning at all.


### Plain English
Partition early so spark does not have to. It can avoid many more shuffles and help with data locality. Try to keep data you will join on same partitions (co-partitioned). Finally decorate your data later to avoid having to move more data around than needed during shuffles.


## Chunk 1 compressed
Concept: Partition early and enhance data later.
Why it matters: This will increase spark performance when doing joins or operations on dataframes.
Example: If we are joining two large data sets that on customer id at some point its better to partition the data by that same customer id earlier. 
One confusion: ...

