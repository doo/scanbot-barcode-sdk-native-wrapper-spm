// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "ScanbotBarcodeSDKNativeWrapper",
    platforms: [
        .iOS("15.6")
    ],
    products: [
        .library(name: "ScanbotBarcodeSDKWrapper", targets: ["ScanbotBarcodeSDKWrapper"]),
        .library(name: "ScanbotBarcodeScannerSDK", targets: ["ScanbotBarcodeScannerSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ScanbotBarcodeSDKWrapper",
            url: "https://doo-download-new.s3.eu-west-1.amazonaws.com/sdk/barcode-sdk-wrapper/ios/xcframework/scanbot-barcode-sdk-wrapper-xcframework-10.0.0.zip",
            checksum: "9b4584f506b8e119d5c2f145b1e3ab41107ab7bf0bd2c56a80adf9c47f169d9e"
        ),
        .binaryTarget(
            name: "ScanbotBarcodeScannerSDK",
            url: "https://download.scanbot.io/barcode-scanner-sdk/ios/pre/xcframeworks/RC10/scanbot-ios-barcode-scanner-sdk-xcframework-10.0.0.zip",
            checksum: "bd7c97d021f38173b9592fd586bbe587eaf505e673c68c843852578b65fbedcf"
        )
    ]
)
