// swift-tools-version:5.3
// We're hiding dev, test, and danger dependencies with // dev to make sure they're not fetched by users of this package.
import PackageDescription

let package = Package(
    name: "CameraScanner",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // dev .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"]), // dev
        .library(
          name: "CameraScanner", 
          // Temporary fix to allow XCode 14 previews to work: https://developer.apple.com/forums/thread/707569
          // type: .static, 
          targets: ["CameraScanner"]
          )
    ],
    dependencies: [
        // dev .package(name: "danger-swift", url: "https://github.com/danger/swift", from: "3.0.0"),
        // dev .package(name: "WeTransferPRLinter", path: "Submodules/WeTransfer-iOS-CI/Danger-Swift")
    ],
    targets: [
        // This is just an arbitrary Swift file in the app, that has
        // no dependencies outside of Foundation, the dependencies section
        // ensures that the library for Danger gets build also.
        // dev .target(name: "DangerDependencies", dependencies: [.product(name: "Danger", package: "danger-swift"), "WeTransferPRLinter"], path: "Submodules/WeTransfer-iOS-CI/Danger-Swift", sources: ["DangerFakeSource.swift"]),
        .target(name: "CameraScanner",
                path: "WeScan",
                exclude: [
                    "Info.plist",
                    "WeScan.h"
                ],
                resources: [
                    .process("Resources")
                ])
    ]
)
