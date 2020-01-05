const f =
  factorialFn => n => n == 1 ? 1: n * factorialFn(n - 1)

f(x => x(x))(2)
