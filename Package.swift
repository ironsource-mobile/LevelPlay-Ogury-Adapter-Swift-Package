// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Ogury-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "OguryAdapter", targets: ["OguryAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Ogury/ogury-sdk-spm", exact: "5.2.3"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/ogury-adapter/5.5.0/ISOguryAdapter5.5.0.zip",
      checksum: "491a917f73adf8914c2238079236e932bb0274ca0ca79b9f1b4ab46cbc281cee"
    )
  ]
)
