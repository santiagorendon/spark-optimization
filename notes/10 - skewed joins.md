# Title

## Pre-watch questions
1. What are skewed joins?
2. How do we identify them?

## Chunk 1
(only write concepts)
data skew



## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`

### 3 main points
1. data skew occurs when data is not evenly distributed across the join or partition.
2. data skew is hard to see from query plan or code. Its best to see summary stats in spark UI or analyze data.
3. data skew can be fixed by adding more information into the partition like extra columns from dataset or salt.

## Chunk 1 compressed
Concept: data skew causes partitions to get overloaded creating straggler data skew causes partitions to get overloaded creating straggler tasks
Why it matters: identifying data skew and fixing it can save a lot of money.
Example: If partition key is a popular brand it can have many entries if need to do join on that brand you can add other column like city so that its more evenly distributed.
One confusion: its hard to notice data skew in query plan or code need to go to spark UI or analyze data.

