# homebrew-rtr

Homebrew tap for [RTR](https://github.com/suncanyon/rtr) — the universal CLI for the RTR API gateway.

## Install

```sh
brew install suncanyon/rtr/rtr
```

Or add the tap separately:

```sh
brew tap suncanyon/rtr
brew install rtr
```

## Quick start

```sh
rtr claude setup --api-url <your-rtr-url>   # Connect Claude Code to RTR
rtr init                                     # Set up for any other agent
rtr --help                                   # Full command reference
```

## Updating

```sh
brew upgrade rtr
```

The formula is updated automatically when a new stable release is tagged in [suncanyon/rtr](https://github.com/suncanyon/rtr).
