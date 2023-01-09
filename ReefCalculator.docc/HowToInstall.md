# How to install ReefCalculator

## Swift Package Manager

The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding ReefCalculator as a dependency is as easy as adding it to the dependencies value of your Package.swift.

```
dependencies: [
    .package(url: "https://github.com/reef-buddy/reef-calculator", .upToNextMajor(from: "1.0.0"))
]
```