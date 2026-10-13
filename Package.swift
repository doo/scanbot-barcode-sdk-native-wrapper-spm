// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "ScanbotBarcodeSDKNativeWrapper",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "ScanbotBarcodeSDKWrapper", targets: ["ScanbotBarcodeSDKWrapper"]),
        .library(name: "ScanbotBarcodeScannerSDK", targets: ["ScanbotBarcodeScannerSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ScanbotBarcodeSDKWrapper",
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/xcframework/scanbot-barcode-sdk-wrapper-xcframework-10.0.5.zip",
            checksum: "c9963b0df73cb7ac098f9f78c5d98716573af0231114dfa6d530a9fb26857da2"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/xcframeworks/scanbot-ios-barcode-scanner-sdk-xcframework-10.0.0.zip",
            checksum: "fbc3842e175155828a5fdfc4f2a363dfe24ee6522a281e36c94e3db059ff019a"
        )
    ]
)
