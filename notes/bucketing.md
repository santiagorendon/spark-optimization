# Title

## Pre-watch questions
what is bucketing used for?
when should you use it?

## Chunk 1
(only write concepts)
split data inteliigently
bucket pruning
multiple join/groups

## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`

### 3 main points
1. bucketing helps you partition or group similar data in same files. It writes partitions into storage to be read later.
2. this is similar to co-partitioning and early partitioning in that if done early then no shuffles are needed
3. bucketing is almost as expensive as a regular shuffle but subsequent joins will be much faster.
4. bucket pruning - if you do filter on partitions then spark is smart enough to push the filters to reading the actual file so it only reads those partitions and makes it so we read way less data. Imagine we want to filter for user id 1000 and its partition by user id then you only read the partition for that user id.

## Chunk 1 compressed
Concept: bucketing writes tables by specific partitions into storage output used to avoid shuffling that data into those exact partitions again.
Why it matters: Performance tuning for when you have a table you use several times.
Example: you want to join users table by userid several times then just have this table pre bucketed by user id so we no longer have to shuffle it in future.
One confusion: its very similar to pre-partitioning but difference is lifetime since we write this output then it lasts longer so its perfect for when using that table many times and do joins on those particular partitions.
