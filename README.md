# Initial ideas


## Math operations

The user needs to evaluate a result of a expression with random numbers. After each right response, we increase the number of numbers. 

Initially we will only use sums. In future, we will insert subtractions. And multiplications and divisions. I do not know the better way to insert, see some problems:

- 1 - 3 * 5 + 7: matematically, we need first to multply -3 and 5 (= -15), sum 1 (-14) and sum 7 (-7). The multiplication comes first. If we apply the calculations in sequence, we will have 1 - 3 = -2 ... -2 * 5 = -10 ... -10 + 7 = -3 => wrong answers
- We need only to multiply if small numbers. See with 3 digits: 999 * 765 => hard
- In divisions maybe the solution is difficult if the divisions were in sequence and non exacts (integer result). Example: 7 / 4 / 9 => hard 

Example (random numbers):

```
55 + 12
(right user answer)

(next request)
55 + 12 + 1
(right user answer)

(next request)
55 + 12 + 1 + 97
(wrong user answer)

You got 2 right answer(s)
Right result: 165
```


## Julia version

You can check the Julia version after installing through this command

```
julia -v
```

I used the version `1.10.4`.


## Another resources

[Kanban board](https://trello.com/b/gEzHauLi/geral)

[Demo](https://youtu.be/masqBbglKNY)

[Installation of Julia](https://julialang.org/downloads/)
