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
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/xcframework/scanbot-barcode-sdk-wrapper-xcframework-10.0.4.zip",
            checksum: "2fb9c6fe0cf4e1aaf1ab1367b3d57eb3e4abe23e3dc8ad14f72294c78de3888a"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/xcframeworks/scanbot-ios-barcode-scanner-sdk-xcframework-10.0.0.zip",
            checksum: "fbc3842e175155828a5fdfc4f2a363dfe24ee6522a281e36c94e3db059ff019a"
        )
    ]
)
