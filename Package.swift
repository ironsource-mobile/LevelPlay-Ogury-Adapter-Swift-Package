// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Ogury-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "OguryAdapter", targets: ["OguryAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Ogury/ogury-sdk-spm", exact: "5.3.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/ogury-adapter/5.8.0/ISOguryAdapter5.8.0.zip",
      checksum: "dbf010e66c67df647a22d6c57567e02cdd2e199d0b73555c927f046cb6175578"
    )
  ]
)
