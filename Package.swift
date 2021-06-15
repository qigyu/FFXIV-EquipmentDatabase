// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "EquipmentDatabase",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "EquipmentDatabase", targets: ["EquipmentDatabase"])
    ],
    dependencies: [
        .package(name: "Tokamak",
                 url: "https://github.com/TokamakUI/Tokamak",
                 Version(0,6,1) ..< Version(0,7,0)),
        .package(name: "TokamakHTMLFunctionBuilder",
                 url:"https://github.com/evdwarf/tokamak-html-function-builder",
                 from: "0.0.4"),
        .package(name: "Closswift",
                 url: "https://github.com/evdwarf/closswift",
                 from: "0.0.1"),
        .package(name: "TailwindSwift",
                 url: "https://github.com/evdwarf/tailwind-swift",
                 from: "0.1.0"),
        
    ],
    targets: [
        .target(
            name: "EquipmentDatabase",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak"),
                "TokamakHTMLFunctionBuilder",
                "Closswift",
                "TailwindSwift"
            ]),
        .testTarget(
            name: "EquipmentDatabaseTests",
            dependencies: ["EquipmentDatabase"]),
    ]
)
