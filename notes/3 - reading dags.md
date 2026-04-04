# Title

## Pre-watch questions
How do we interpret dags?
How do the steps map to code?
How do they map to query plan?

## Chunk 1
(only write concepts)
jobs ui
stages ui
tasks summary
tasks table
dag visualization
Exchange
WholeStageCodegen


## Chunk 1 converted
- the `3 main points`
- the `plain English explanation`
- `why it matters`
- `one example`

### 3 main points
1. DAG visualization lets you see what happens in certain stage and across stages.
2. Stages are seperated by shuffles
3. spark ui lets you visualize stage level task level executor level and job level so varying levels of granularity of what is going on.

## Chunk 1 compressed
Concept: we use the spark ui dag visualization to visualize what spark does.
Why it matters: We can use spark visualization to understand the diff tasks and stages involved.
Example: Dag visualization for loading employees data repartitioning it then joining with employees dept data will show 3 stages. 1 for loading employees, one for loading dept data then they both do SHUFFLE and get joined in a final stage.
One confusion: ...

