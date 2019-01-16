function fib(n, start = true) {
  if (n < 3) {
    return start ? 1 : [1, n === 2 ? 1 : 0];
  }

  const [a, b] = fib(n - 1, false);

  return start ? a + b : [a + b, a];
}
