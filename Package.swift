// swift-tools-version: 6.1
import PackageDescription

let checksumForAreebaIDV = "da339a949c3f13f681dd7ef1a5312ed6758950f428133cbd823c33aedcba5814"
let idwiseSDKVersion = "5.5.2"
let checksumForIDWise = "b1be6e9dc98c641e6dc013ad4387ac4053fc76a010da415feb0a31fdbd0748f1"



let package = Package(
    name: "AreebaIDVSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AreebaIDVSDK",
            targets: ["AreebaIDV","IDWise"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/idwise/idwise-ios-sdk.git", from: "5.5.2")
    ],
    targets: [
        .binaryTarget(
              name: "IDWise",
              url: "https://mobile-sdk.idwise.ai/ios/\(idwiseSDKVersion)/IDWiseSDK.xcframework.zip",
              checksum: checksumForIDWise
            ),
        .binaryTarget(
                   name: "AreebaIDV",
                   url: "https://www.dropbox.com/scl/fi/20fqhz4xr3etqlhcs5hl0/AreebaIDV.xcframework.zip?rlkey=yersh9s1pk046vsczpejo66th&st=itlkymiv&dl=1",
                   checksum: checksumForAreebaIDV
               )
    ]
)
