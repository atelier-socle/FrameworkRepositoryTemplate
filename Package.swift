// swift-tools-version:5.1

import PackageDescription

let package = Package(name: "MyFramework",
                      platforms: [.macOS(.v10_15),
                                  .iOS(.v13),
                                  .tvOS(.v13),
                                  .watchOS(.v6)],
                      products: [.library(name: "MyFramework",
                                          targets: ["MyFramework"])],
                      targets: [.target(name: "MyFramework",
                                        path: "Sources")],
                      swiftLanguageVersions: [.v5])
