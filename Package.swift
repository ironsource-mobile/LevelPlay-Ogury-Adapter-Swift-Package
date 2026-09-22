// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Ogury-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "OguryAdapter", targets: ["OguryAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Ogury/ogury-sdk-spm", exact: "5.3.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/ogury-adapter/5.9.0/ISOguryAdapter5.9.0.zip",
      checksum: "4d0b8af668b283347607200220a7160abbfd1e212ef0a347286d5450e0f43acf"
    )
  ]
)
