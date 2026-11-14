# Siphon's Homebrew tap

```sh
brew install --cask counterbeing/siphon/siphon
```

Installs the Mac app of [Siphon](https://siphon.watch): voice capture from Apple Watch Ultra to
your AI agent. It needs a Mac with Apple silicon running macOS 26 or later. Setting it up from
there is in the [Quickstart](https://siphon.watch/docs/quickstart/).

The app is signed with Siphon's Developer ID and notarized by Apple, and it updates itself once
it's installed, so `brew upgrade` leaves it alone (`brew upgrade --greedy` doesn't).

## Where the cask comes from

`Casks/siphon.rb` is written by each release of the Mac app from the public release list,
<https://download.siphon.watch/latest-mac.json>: the version and the SHA-256 of that version's
disk image. Nothing in it is edited by hand, and a release replaces the whole file, so a change
made here doesn't last. Problems with the cask or the app: hello@siphon.watch.
