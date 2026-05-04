# Title

## Pre-watch questions
* what is co-grouping?
* how does it affect performance?

## Chunk 1
(only write concepts)


## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`

### 3 main points
1. co-group is useful when joining several RDDs its only avaiable for RDDs.
2. co-grouping will only do join once where as if you want to join many its usually X amount of joins that appear in spark ui.
3. This will co partition all RDDs that you want to join into same partition. So this will act as a investment similar to co-partition in that subsequent joins on these multiple rdds will be fast.
4. Co group acts like an outer join so the values we get for a key are usually iterables since can have several of same.

## Chunk 1 compressed
Concept: This helps us optimize multi-joins when using RDDs
Why it matters: multi joins can incur several joins but this will do it once. Additionally similar to co-partitioning it will act as an investment for future joins.
Example: If we want to join basketball players to their GPA scores and to a table with their class schedule. We will co-group by basketball player id. This will put all basketball player data for one player in same partition and thus it can do one join operation.
One confusion: It does full outer join so values are iterables.

