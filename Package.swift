// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "EquipmentDatabase",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "EquipmentDatabase", targets: ["EquipmentDatabase"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.6.1")
    ],
    targets: [
        .target(
            name: "EquipmentDatabase",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "EquipmentDatabaseTests",
            dependencies: ["EquipmentDatabase"]),
    ]
)