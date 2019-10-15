// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "FBSDKSwift",
    // platforms: [.iOS("8.0")],
    products: [
        .library(name: "FBSDKSwift", targets: ["FBSDKSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/facebook-swift-sdk.git", .upToNextMajor(from: "5.8.0")),
    ],
    targets: [
        .target(
            name: "FBSDKSwift",
            //dependencies: ["FBSDKShareKit", "FBSDKLoginKit"],
            path: "Sources",
            exclude: ["Frameworks"]
        )
    ]
)