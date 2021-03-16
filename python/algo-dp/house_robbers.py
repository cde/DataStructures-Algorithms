# #!/bin/python3

def rob(nums) -> int:
    rob1, rob2 = 0, 0

    for n in nums:
        temp = max(n + rob1, rob2)
        rob1 = rob2
        rob2 = temp
    return rob2


print(rob(nums=[2, 7, 9, 3, 1]))
