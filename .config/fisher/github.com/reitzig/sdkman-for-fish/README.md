# SDKMAN! for fish

[![Build Status][travis-badge]][travis-link]

Makes command `sdk` from [SDKMAN!] usable from fish, including auto-completion.
Also adds binaries from installed SDKs to the PATH.

Version 1.4.0 tested with 

 - fish 2.7.1 and 3.0.2, and 
 - SDKMAN! 5.7.4, on
 - Ubuntu 18.04 LTS and macOS 10.13.

## Install

With [fisher] (install separately):

```
fisher add reitzig/sdkman-for-fish
```

_Note:_ 

 - Only compatible with fisher v3 upwards; v2 is no longer supported.
 - You have to install [SDKMAN!] separately.

## Usage

It's all in the background; you should be able to run `sdk` and binaries installed
with `sdk` as you would expect.

## Acknowledgements

 * Completion originally by [Ted Wise](https://github.com/ctwise); see his
     [blog post from 2016](http://tedwise.com/2016/02/26/using-sdkman-with-the-fish-shell).
 * Binary loading originally by [Koala Yeung](https://github.com/yookoala);
     see [his comment on sdkman/sdkman-cli#294](https://github.com/sdkman/sdkman-cli/issues/294#issuecomment-318252058).

[SDKMAN!]: https://github.com/sdkman/sdkman-cli
[fisher]: https://github.com/jorgebucaran/fisher
[travis-link]: https://travis-ci.org/reitzig/sdkman-for-fish
[travis-badge]: https://travis-ci.org/reitzig/sdkman-for-fish.svg?branch=master
