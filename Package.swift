// swift-tools-version: 6.1
import PackageDescription

let checksumForAreebaIDV = "da339a949c3f13f681dd7ef1a5312ed6758950f428133cbd823c33aedcba5814"
let checksumForShield = "28ed6c3a69c62e19fc508176cc4401e6e282a941b0110dfed85b528e39e4a4c3"
let checksumForFP = "cdceb6f13d2302bfdbf95f26d013264c678058ffbf1226034aaa0be1763d796b"
let checksumForIDWise = "b1be6e9dc98c641e6dc013ad4387ac4053fc76a010da415feb0a31fdbd0748f1"

let shieldVersion = "1-5-49"
let fpVersion = "2.7.0"
let idwiseSDKVersion = "5.5.2"


let package = Package(
    name: "AreebaIDVSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AreebaIDVSDK",
            targets: [ "AreebaIDVTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/idwise/idwise-ios-sdk.git",exact:"5.5.2")
    ],
    targets: [
        .binaryTarget(
                   name: "AreebaIDV",
                   url: "https://www.dropbox.com/scl/fi/20fqhz4xr3etqlhcs5hl0/AreebaIDV.xcframework.zip?rlkey=yersh9s1pk046vsczpejo66th&st=itlkymiv&dl=1",
                   checksum: checksumForAreebaIDV
               ),
        .target(
                   name: "AreebaIDVTarget",
                   dependencies: [
                       "AreebaIDV", // Binary Target
                       .product(name: "IDWise", package: "idwise-ios-sdk")
                       
                   ],
                   path: "Sources/AreebaIDVTarget"
               )
    ]
        
)
