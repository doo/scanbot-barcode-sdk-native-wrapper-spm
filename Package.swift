// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "ScanbotBarcodeSDKNativeWrapper",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "ScanbotBarcodeSDKWrapper", targets: ["ScanbotBarcodeSDKWrapper"]),
        .library(name: "ScanbotBarcodeScannerSDK", targets: ["ScanbotBarcodeScannerSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ScanbotBarcodeSDKWrapper",
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/cocoapods/scanbot-barcode-sdk-wrapper-pods-9.0.4.zip",
            checksum: "f3aad8f3f5439d67e08edf5a4a0a73517f03d464808fcce0340bfb130fe06a09"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/pre/xcframeworks/RC12/scanbot-ios-barcode-scanner-sdk-xcframework-9.0.0.zip",
            checksum: "b6184df1c4672f7e9e77b82f07bb4aa0db9f9c6882a07046b501f7e6c61e8cfc"
        )
    ]
)
