// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Ogury-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "OguryAdapter", targets: ["OguryAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Ogury/ogury-sdk-spm", exact: "5.2.0"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "OguryAdapter",
      dependencies: [
        "OguryAdapterSDK",
        .product(name: "OgurySdk", package: "ogury-sdk-spm"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "OguryAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/ogury-adapter/5.2.0/ISOguryAdapter5.2.0.zip",
      checksum: "828c57a70d11a14f5d8a69160cf8c8aa8aff9eda89ab41a0e803695df1a7827b"
    )
  ]
)
