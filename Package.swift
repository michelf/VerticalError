// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "VerticalError",
    products: [
        .library(
            name: "VerticalError",
            targets: ["VerticalError", "VerticalErrorC"]),
    ],
    targets: [
		.target(
			name: "VerticalError",
			dependencies: [
				.target(name: "VerticalErrorC", condition: .when(platforms: [.macOS, .macCatalyst, .iOS, .tvOS, .watchOS, .visionOS])),
			]),
		.target(
			name: "VerticalErrorC"),
    ]
)
