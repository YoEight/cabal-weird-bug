cabal-weird-bug
===============

This is a bug I got originally from a big project we got at my job.

The bug showcases different behaviors between `cabal new-build` and `cabal new-install`.

While the former works, the latter fails with a compilation error:

```
$ cabal new-build dep-exe # works
$ cabal new-install dep-exe # Fails :-(
```

# Solution

You have too add `dep-lib`'s `etc/foo.txt` to `extra-source-files` section in `dep-lib.cabal`. I find it unfortunate `cabal` is behaving differently between `new-build` and `new-install`, however `https://github.com/haskell-CI/haskell-ci` alleviates that issue.
