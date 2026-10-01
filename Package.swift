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
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/xcframework/scanbot-barcode-sdk-wrapper-xcframework-10.0.2.zip",
            checksum: "f9f189befba28af8fe94b7334b3d5e72847bbe6bca9debd7f6ad2d019ce18606"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/pre/xcframeworks/RC13/scanbot-ios-barcode-scanner-sdk-xcframework-10.0.0.zip",
            checksum: "4976ff0285ab1c0ea9babeb192cecffabaa6ea1280c5a4d06b3c92b2b849bf65"
        )
    ]
)
