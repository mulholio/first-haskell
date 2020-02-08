# Folds

## Questions

- [ ] What are folds?
- [ ] When is something _foldable_?
- [ ] What is the difference between foldr and foldl?
  - [ ] Can I practically use that difference in code?
- [ ] How do arrays and folds relate?
- [ ] What are scans?

---

## Notes

- The difference between `foldr` and `foldl` is the associativity of evaluation (not the spine)
- They also have different types: TODO

```haskell
--       [_<->_]
foldr :: (a -> b -> b) -> b -> [a] -> b
foldl :: (b -> a -> b) -> b -> [a] -> b
```

---

## Feynmen Technique

