// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ios-snapshot-test-case",
    products: [
        .library(name: "FBSnapshotTestCase", targets: ["FBSnapshotTestCase"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FBSnapshotTestCaseObjC",
            dependencies: [],
            path: "FBSnapshotTestCase/ObjC",
            exclude: ["FBSnapshotTestCase-Info.plist"]
        ),
        .target(
            name: "FBSnapshotTestCase",
            dependencies: ["FBSnapshotTestCaseObjC"],
            path: "FBSnapshotTestCase/Swift"
        ),
        .testTarget(
            name: "FBSnapshotTestCaseTests",
            dependencies: ["FBSnapshotTestCase"],
            path: "FBSnapshotTestCaseTests",
            sources: ["FBSnapshotTestCaseTests.m"]
        ),
    ]
)
