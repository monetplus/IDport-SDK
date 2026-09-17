// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private class Versions {
    static let CommunicatorFramework = "14.1.2"
    static let CoreUtilities = "6.0.1"
    static let JOSESwift = "3.0.0"
    static let SecureStorage = "11.1.0"
    static let DynamicCertificatePinningFramework = "18.1.1"
    static let ApplicationAttestationFramework = "8.0.1"
    static let CMSDK = "27.0.0"

    static let SWTActivationCode = "9.0.1"
    static let TransactionProcessorFramework = "25.0.1"
    static let NicknameFramework = "25.0.1"
    static let AnonymousQRFramework = "25.0.1"
    static let AQRIdentifySupportFramework = "25.0.1"
    static let EmailCheckFramework = "25.0.1"
    static let WidgetUtilsFramework = "25.0.1"
    static let FederatedLoginFramework = "5.0.0"
    static let OpenIDConnectFramework = "5.0.0"

    static let Talsec = "1.1.1"
}

private class Checksums {
    static let CommunicatorFramework = "d02a01a3aeb50b64819aa131512c0b775794d045a47edfb99ccde4d7bf8daeaf"
    static let CoreUtilities = "5e6cf6c6dba4c0cb197f2c12278ebbbdaec4bc70a0afe7919682a2ec75d428b7"
    static let JOSESwift = "f23c30ed15df37820b6674b4b0141312f10cfbcfe48fc123d5adc345d4460902"
    static let SecureStorage = "248bab2e37ae8ea4ee4b4ac902648d52c52aa1870b53a3b51a87ac05120bc539"
    static let DynamicCertificatePinningFramework = "21e8d66b396f5015eccd8424d5ff368a2474b4b7e19666e9e95b99db072489a1"
    static let ApplicationAttestationFramework = "40839800bb291b4a8a866c2931ab84418f163185ee8762c6f16eaf8ca14bbb76"
    static let CMSDK = "8550e11897fef171ed364068eff9393c28a2ef246c7ad1f18cb9401e2914506e"

    static let SWTActivationCode = "1910ea1035fbc5c5ab70a16a36b01831a7cbcdab6c6670ccfee223186380b902"
    static let TransactionProcessorFramework = "0602139d5c2d1409d915d12dcd385d86e328267d1f6e925f2b798cc86a5d2453"
    static let NicknameFramework = "2381d59de442ef4eb07450d17fb9b0d3a711c5b50538aa4a1f364a80ba462c8c"
    static let AnonymousQRFramework = "0e826e80bc4a923d34e70223527ba867a0f597b6348dfdc59b6d11a3908a5077"
    static let AQRIdentifySupportFramework = "22b14be432b8d7cf9150574679640a4b0e24696b49416163b501603a75b2c38a"
    static let EmailCheckFramework = "914a99f55d843242f2d648786d17019f822a63904fbab202c4321576674d5133"
    static let WidgetUtilsFramework = "10f8823b334afb2324ed8b9f944dc76f31c05bb1ab53a63c9d40e53b8cb99003"
    static let FederatedLoginFramework = "53742644f600b221090fab6fbf205700db8285f4c58352b43c45bdfc4f12cadc"
    static let OpenIDConnectFramework = "e1d071090e8e07927e2a2fc2af3843fed4e10a9580354654212e089c653b3e61"

    static let Talsec = "f94cba307567e0af84d00cbd27379585cfd3bccdec27446a1a62fbf85f4068c4"
}

let nexusUrl = "https://nexus3-public.monetplus.cz/repository/ahead-ios-release/com/aheaditec"

let package = Package(
    name: "IDportSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IDportSDK",
            targets: [
                "IDportSDK"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-certificates.git", exact: "1.18.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", exact: "1.9.0")
    ],
    targets: [
        .binaryTarget(name: "CommunicatorFramework", url: assembleUrl("utils", "CommunicatorFramework", Versions.CommunicatorFramework), checksum: Checksums.CommunicatorFramework),
        .binaryTarget(name: "CoreUtilities", url: assembleUrl("utils", "CoreUtilities", Versions.CoreUtilities), checksum: Checksums.CoreUtilities),
        .binaryTarget(name: "JOSESwift", url: assembleUrl("utils", "JOSESwift", Versions.JOSESwift), checksum: Checksums.JOSESwift),
        .binaryTarget(name: "SecureStorage", url: assembleUrl("talsec", "SecureStorage", Versions.SecureStorage), checksum: Checksums.SecureStorage),
        .binaryTarget(name: "DynamicCertificatePinningFramework", url: assembleUrl("DynamicCertificatePinningFramework", "DynamicCertificatePinningFramework", Versions.DynamicCertificatePinningFramework), checksum: Checksums.DynamicCertificatePinningFramework),
        .binaryTarget(name: "ApplicationAttestationFramework", url: assembleUrl("security", "ApplicationAttestationFramework", Versions.ApplicationAttestationFramework), checksum: Checksums.ApplicationAttestationFramework),

            .binaryTarget(name: "Talsec", url: assembleUrl("talsec", "Talsec", Versions.Talsec), checksum: Checksums.Talsec),
        .binaryTarget(name: "CMSDK", url: assembleUrl("cmsdk", "CMSDK", Versions.CMSDK), checksum: Checksums.CMSDK),

            .binaryTarget(name: "FederatedLoginFramework", url: assembleUrl("FederatedLogin", "FederatedLoginFramework", Versions.FederatedLoginFramework), checksum: Checksums.FederatedLoginFramework),
        .binaryTarget(name: "OpenIDConnectFramework", url: assembleUrl("FederatedLogin", "OpenIDConnectFramework", Versions.OpenIDConnectFramework), checksum: Checksums.OpenIDConnectFramework),

            .binaryTarget(name: "SWTActivationCode", url: assembleUrl("MethodManager", "SWTActivationCode", Versions.SWTActivationCode), checksum: Checksums.SWTActivationCode),

            .binaryTarget(name: "TransactionProcessorFramework", url: assembleUrl("widgetizing", "TransactionProcessorFramework", Versions.TransactionProcessorFramework), checksum: Checksums.TransactionProcessorFramework),
        .binaryTarget(name: "NicknameFramework", url: assembleUrl("widgetizing", "NicknameFramework", Versions.NicknameFramework), checksum: Checksums.NicknameFramework),
        .binaryTarget(name: "AnonymousQRFramework", url: assembleUrl("widgetizing", "AnonymousQRFramework", Versions.AnonymousQRFramework), checksum: Checksums.AnonymousQRFramework),
        .binaryTarget(name: "AQRIdentifySupportFramework", url: assembleUrl("widgetizing", "AQRIdentifySupportFramework", Versions.AQRIdentifySupportFramework), checksum: Checksums.AQRIdentifySupportFramework),
        .binaryTarget(name: "EmailCheckFramework", url: assembleUrl("widgetizing", "EmailCheckFramework", Versions.EmailCheckFramework), checksum: Checksums.EmailCheckFramework),
        .binaryTarget(name: "WidgetUtilsFramework", url: assembleUrl("widgetizing", "WidgetUtilsFramework", Versions.WidgetUtilsFramework), checksum: Checksums.WidgetUtilsFramework),
        .target(
            name: "CMSDKCertificatesSupport_Swift",
            dependencies: [
                "CMSDK",
                .product(name: "X509", package: "swift-certificates")
            ]
        ),
        .target(
            name: "CMSDKCertificatesSupport_ObjC",
            dependencies: [
                "CMSDKCertificatesSupport_Swift"
            ],
            publicHeadersPath: "_includes"
        ),
        .target(
            name: "IDportSDK",
            dependencies: [
                "CommunicatorFramework",
                "CoreUtilities",
                "JOSESwift",
                "SecureStorage",
                "DynamicCertificatePinningFramework",
                "ApplicationAttestationFramework",
                "Talsec",
                "CMSDK",
                "CMSDKCertificatesSupport_ObjC",
                "SWTActivationCode",
                "TransactionProcessorFramework",
                "NicknameFramework",
                "AnonymousQRFramework",
                "AQRIdentifySupportFramework",
                "EmailCheckFramework",
                "WidgetUtilsFramework",
                "FederatedLoginFramework",
                "OpenIDConnectFramework",
                .product(name: "CryptoSwift", package: "cryptoswift")
            ]
        ),
    ]
)

func assembleUrl(_ group: String, _ artifact: String, _ version: String) -> String {
    "\(nexusUrl)/\(group)/\(artifact)/\(version)/\(artifact).xcframework.zip"
}
