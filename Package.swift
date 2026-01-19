// swift-tools-version: 6.0
//   Draft by Gemini 3 Thinking, finished by Dr. Orion Lawlor, 2026-01-15 (Public Domain)
import PackageDescription

let package = Package(
    name: "Graphduino",
    platforms: [
		.macOS(.v10_15), // needed for async in SwiftSerial
	],
    dependencies: [
        .package(url: "https://github.com/STREGAsGate/Raylib", branch: "master"),
        .package(url: "https://github.com/olawlor/SwiftSerial", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "Graphduino",
            dependencies: [
                .product(name: "Raylib", package: "Raylib"),
                .product(name: "SwiftSerial", package: "SwiftSerial")
            ]
        )
    ]
)
