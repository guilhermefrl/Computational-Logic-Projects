# Problem B &mdash; Well-Formed Propositional Formulas

## Introduction

The purpose of this problem is the analysis of propositional formulas and their good formation.

For example the strings:

```
(X -> Y)
(False & ((True & Y) | (X <-> Y)))
((False) & ((True & Y) | (X <-> Y)))
```

represent well-formed propositional formulas (well-parented, all logical operators are used properly). In contrast, the following strings do not represent well-formed formulas:

```
( & ((True & Y) | (X <-> Y)))
((False & (!(True & Y) | (X <-> Y)))
```

In the first there is an inappropriate use of the conjunction, and the second formula is poorly parsed.


## Task

Implement a program that, taking a formula as input, checks whether it is well-formed or not.


## Input

The formula for parsing is given in a stepwise fashion, element by element, one per line.

`True` represents the truth value, `False` the false value, any other string of characters is a propositional variable (assume we will only use capital letters for simplicity).

We also use the usual parentheses `( )`, the character `&` for the conjunction, `!` for the negation, `|` for the disjunction, `->` for the implication and finally `<->` for the equivalence .

The input is then organized as follows. In the first line, the size of the formula is indicated with an integer _N_ (how many syntactic elements make up the formula &mdash; see example).

The _N_ lines introduce the formula elements in order one by one.


### Constraints

* _0 ≤ N ≤ 100_


## Output

A line with the word `YES` if the input formula is well formed, or the word `NO` otherwise.


### Input 1

```
17
(
False
&
(
(
True
&
Y
)
|
(
X
<->
Y
)
)
)
```


### Output 1

```
YES
```


### Input 2

```
18
(
(
False
&
(
(
True
&
Y
)
|
(
X
<->
Y
)
)
)
```


### Output 2

```
NO
```
