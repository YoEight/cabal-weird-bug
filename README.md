cabal-weird-bug
===============

This is a bug I got originally from a big project we got at my job.

The bug showcases different behaviors between `cabal new-build` and `cabal new-install`.

While the former works, the latter fails with a compilation error:

```
$ cabal new-build dep-exe # works
$ cabal new-install dep-exe # Fails :-(
```
