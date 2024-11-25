def fib_dp(n, memo={}):
  if n in memo:
    return memo[n]
  if n <= 1:
    return n
  memo[n] = fib_dp(n-1, memo) + fib_dp(n-2, memo)
  return memo[n]
