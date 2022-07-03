# Problem C &mdash; Validity of FNC formulas

## Introduction

The unsolved problem in this exercise is to find out whether an FNC is a tautology or not, using the result (Lemma 8.1) that establishes when a disjunct of literals is a tautology and when a set of such disjuncts is also a tautology.

Recall that this Lemma emphasizes that a disjunction that contains ⊤ or a literal and its negation is necessarily valid.


## Taks

Read the input formula that is in conjunctive normal form, calculate and state whether it is a valid formula or not.


## Input

In the first line, the integer _n_ is introduced, the number of disjuncts.

The next _n_ lines introduce each FNC circuit breaker individually.

For example **(_A_ ∨ ⊤ ∨ ⊥ ∨ ¬ _B_)** is entered on a line like `A 1 0 ~B`, where 0 is ⊥, 1 is ⊤, and ~ is the negation.

As shown in the example, each element of the disjunct is separated from the others by a space.


## Constraints

Variable identifiers are formed exclusively by letters.

The number of variables is limited to 100: **0 < _n_ < 100**


## Output

A line with the word `VALIDA` if the FNC is valid or `NAO E VALIDA` otherwise.


### Input 1

```
4
~p p q
~p p s
~q ~s p q
~q ~s p s
```


### Output 1

```
VALIDA
```


### Input 2

```
4
~p s q
~p r s
~q ~s p
~q 0 p s
```


### Output 2

```
NAO E VALIDA
```
