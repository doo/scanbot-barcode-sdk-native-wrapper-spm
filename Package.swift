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
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/cocoapods/scanbot-barcode-sdk-wrapper-pods-9.0.1.zip",
            checksum: "559765112fc7137cb41224878a42b63fa6e40416ca64b6e232315084e662f0c7"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/pre/xcframeworks/RC5/scanbot-ios-barcode-scanner-sdk-xcframework-9.0.0.zip",
            checksum: "ba0fc6557b2e4dcb5441d9b36a50b4ee78da980d94fe068a299ca19631c2827a"
        ),
    ]
)
