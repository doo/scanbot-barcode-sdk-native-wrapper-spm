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
            url: "https://download.scanbot.io/sdk/barcode-sdk-wrapper/ios/cocoapods/scanbot-barcode-sdk-wrapper-pods-9.0.3.zip",
            checksum: "4b44f94a036995ed7443556fc523748291130d8c98ca9e749df45ca6eca641e3"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/pre/xcframeworks/RC10/scanbot-ios-barcode-scanner-sdk-xcframework-9.0.0.zip",
            checksum: "719acf6419043b80f5c109a4440567fffbd07a3351b81ba340f038c8690981fd"
        )
    ]
)
