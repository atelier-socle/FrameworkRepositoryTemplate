[![Lint Status](https://github.com/atelier-socle/MyFramework/workflows/SwiftLint/badge.svg)](https://github.com/atelier-socle/MyFramework/actions)
[![iOS Status](https://github.com/atelier-socle/MyFramework/workflows/MyFramework%20iOS%20CI/badge.svg)](https://github.com/atelier-socle/MyFramework/actions)
[![tvOS Status](https://github.com/atelier-socle/MyFramework/workflows/MyFramework%20tvOS%20CI/badge.svg)](https://github.com/atelier-socle/MyFramework/actions)
[![macOS Status](https://github.com/atelier-socle/MyFramework/workflows/MyFramework%20macOS%20CI/badge.svg)](https://github.com/atelier-socle/MyFramework/actions)
[![watchOS Status](https://github.com/atelier-socle/MyFramework/workflows/MyFramework%20watchOS%20CI/badge.svg)](https://github.com/atelier-socle/MyFramework/actions)

## MyFramework

Welcome to MyFramework which is doing whatever!

## Getting started

First, you will need a few tools to start working on MyFramework:

- `Xcode`: From the app store or wherever
- [Mint](https://github.com/yonaskolb/mint): `brew install mint`

Then run `make first_install` to have a valid project ready to be used.

### Makefile

- `make first install`: configure the project as a new one (mainly used for the CI)
- `make install` or `make`:
  - Install dependencies
  - Generate an xcodeproj
- `make xcodeproj_gen`: generate a new new xcodeproj
