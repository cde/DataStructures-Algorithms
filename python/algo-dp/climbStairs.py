def climbStairs(n: int) -> int:
    prev, cur = 1, 1
    for _ in range(1, n):
        prev, cur = cur, cur+prev
    return cur


print(climbStairs(3))