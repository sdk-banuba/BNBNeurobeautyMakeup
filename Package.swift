// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.13.0-1-g971efc62f"

let package = Package(
    name: "BNBNeurobeautyMakeup",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBNeurobeautyMakeup",
            targets: [
                "BNBNeurobeautyMakeup",
                "BNBNeurobeautyMakeup_BNBSdkCore",
                "BNBNeurobeautyMakeup_BNBEffectPlayer",
                "BNBNeurobeautyMakeup_BNBScripting",
                "BNBNeurobeautyMakeup_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBNeurobeautyMakeup",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.13.0-1-g971efc62f/BNBNeurobeautyMakeup.zip",
            checksum: "e4f809554488c979c4adf593f33840443672394593c2988d3e0c81383d0ee580"
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
