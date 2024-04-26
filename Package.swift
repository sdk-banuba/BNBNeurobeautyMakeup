// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-40-gb99e5d381"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-40-gb99e5d381/BNBNeurobeautyMakeup.zip",
            checksum: "4c513be7cc9dc108e83a12a8203d0c75b8248370762a6ea181661d8124009988"
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
