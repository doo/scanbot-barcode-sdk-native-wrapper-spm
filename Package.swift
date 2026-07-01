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
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/cocoapods/scanbot-barcode-sdk-wrapper-pods-9.0.5.zip",
            checksum: "2e7bb37f47571e9e6fdaeb0e110a0eabfe499a5243fbd66b370c09099a1d2dcb"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/xcframeworks/scanbot-ios-barcode-scanner-sdk-xcframework-9.0.0.zip",
            checksum: "bf2eb1477327c4669ea0a307dedd1817b154a201f825ead5f824e435aa75a1bb"
        )
    ]
)
