// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Ogury-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "OguryAdapter", targets: ["OguryAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Ogury/ogury-sdk-spm", exact: "5.4.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "OguryAdapter",
      dependencies: [
        "OguryAdapterSDK",
        .product(name: "OgurySdk", package: "ogury-sdk-spm"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "OguryAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/ogury-adapter/5.10.0/ISOguryAdapter5.10.0.zip",
      checksum: "df6e1095fca7611c3a5c86bd2a038ce6a148e402e5a9bfc2321ed4a53dfcb5f1"
    )
  ]
)
