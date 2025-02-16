The issue lies in the way the `primes` function is implemented. When the `filter` function encounters a non-prime number, it doesn't simply skip it. Instead, it continues to attempt to generate more numbers, eventually leading to non-termination. The solution is to use more efficient strategies for prime generation.  Here is one way to fix it:

```haskell
primes :: [Integer]
primes = sieve [2..] 
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
```
This revised version utilizes the Sieve of Eratosthenes algorithm, which is more efficient in generating prime numbers and avoids the issues with the original infinite list implementation.  This approach ensures termination when accessing specific elements of the list.