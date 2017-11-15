# Description - What
For calculating aggregate statistical values over your data.

Group records together by key field and calculate a numerical aggregate per group to get a top-level view of the larger data set.

Numerical summarization functions: min, max, average, median, standard deviation.
NSF executed over a list of values.

Applicable when:
* You are dealing with numerical data or counting
* The data can be grouped by specific fields


## Parts:
* Mapper: outputs Keys that are each field to group by; + Values that are pertinent numerical items.
* Reducer: Performs the numerical summarization function on the set of values.

## Known uses:
- word counting
- record counting
- min max counting
- avg median std deviation

## Resemblances
### SQL

SELECT MIN(numericalcol1), MAX(numericalcol1),
COUNT(*) FROM table GROUP BY groupcol2;

### Pig
b = GROUP a BY groupcol2;
c = FOREACH b GENERATE group, MIN(a.numericalcol1), MAX(a.numericalcol1), COUNT_STAR(a);

## Examples
1. MinMaxCount
