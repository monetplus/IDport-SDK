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
    static let CMSDK = "25.0.1"

    static let SWTActivationCode = "9.0.1"
    static let TransactionProcessorFramework = "24.0.1"
    static let NicknameFramework = "24.0.1"
    static let AnonymousQRFramework = "24.0.1"
    static let AQRIdentifySupportFramework = "24.0.1"
    static let EmailCheckFramework = "24.0.1"
    static let WidgetUtilsFramework = "24.0.1"
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
    static let CMSDK = "5dc764c71f5c6c472b6bedb3f5c6286af785758659e07b7656bd449badbd3214"

    static let SWTActivationCode = "1910ea1035fbc5c5ab70a16a36b01831a7cbcdab6c6670ccfee223186380b902"
    static let TransactionProcessorFramework = "c2baf0ded67368beed4ffca60b63fe719537c496bf0fecc20eef20be03f8fd9b"
    static let NicknameFramework = "32521eb0f80a0667fa9262affe2f59d7003ebe567ec6a625093aea66c0488953"
    static let AnonymousQRFramework = "8e96949a132bf18a3d36ad7c2e80262ac52b604fedab1c6a38f3e173f4d8fc60"
    static let AQRIdentifySupportFramework = "148faf30ed618fa8ef30316e3629350b74cd43d76891d452f8ec9eb22289cb51"
    static let EmailCheckFramework = "f9c17b6d7e8f8f0e1ddba735474b40e023789a69528861be19e1a4637f0ab28b"
    static let WidgetUtilsFramework = "b2ae71ae140ad0067e7c6a16556a71759895623607581f60996b0f54af5c2585"
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
