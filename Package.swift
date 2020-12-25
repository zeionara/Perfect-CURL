// swift-tools-version:5.3
// Generated automatically by Perfect Assistant Application
// Date: 2017-09-20 19:18:02 +0000
import PackageDescription
let package = Package(
	name: "PerfectCURL",
	platforms: [
		.macOS(.v10_15)
	],
	products: [.library(name: "PerfectCURL", targets: ["PerfectCURL"])],
	dependencies: [
		.package(name: "cURL", url: "https://github.com/PerfectlySoft/Perfect-libcurl.git", from: "2.0.0"),
		.package(url: "https://github.com/PerfectlySoft/PerfectLib.git", from: "4.0.0"),
		.package(name: "PerfectThread", url: "https://github.com/PerfectlySoft/Perfect-Thread.git", from: "3.0.0"),
	],
	targets: [
		.target(name: "PerfectCURL", dependencies: ["PerfectLib", "PerfectThread"]),
		.testTarget(name: "PerfectCURLTests", dependencies: ["PerfectCURL"])
	]
)
