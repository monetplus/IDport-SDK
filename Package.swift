// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private class Versions {
    static let CommunicatorFramework = "14.1.2"
    static let CoreUtilities = "6.0.1"
    static let JOSESwift = "3.0.0"
    static let SecureStorage = "11.1.0"
    static let DynamicCertificatePinningFramework = "18.1.3"
    static let ApplicationAttestationFramework = "8.0.1"
    static let CMSDK = "27.0.1"

    static let SWTActivationCode = "9.0.1"
    static let TransactionProcessorFramework = "25.1.0"
    static let NicknameFramework = "25.1.0"
    static let AnonymousQRFramework = "25.1.0"
    static let AQRIdentifySupportFramework = "25.1.0"
    static let EmailCheckFramework = "25.1.0"
    static let WidgetUtilsFramework = "25.1.0"
    static let FederatedLoginFramework = "5.0.0"
    static let OpenIDConnectFramework = "5.0.0"

    static let Talsec = "1.1.1"
}

private class Checksums {
    static let CommunicatorFramework = "d02a01a3aeb50b64819aa131512c0b775794d045a47edfb99ccde4d7bf8daeaf"
    static let CoreUtilities = "5e6cf6c6dba4c0cb197f2c12278ebbbdaec4bc70a0afe7919682a2ec75d428b7"
    static let JOSESwift = "f23c30ed15df37820b6674b4b0141312f10cfbcfe48fc123d5adc345d4460902"
    static let SecureStorage = "248bab2e37ae8ea4ee4b4ac902648d52c52aa1870b53a3b51a87ac05120bc539"
    static let DynamicCertificatePinningFramework = "68e1b2007652cd44b3564716eb75f6042732a90a7ee4227dcb0d611b4ad3e2c9"
    static let ApplicationAttestationFramework = "40839800bb291b4a8a866c2931ab84418f163185ee8762c6f16eaf8ca14bbb76"
    static let CMSDK = "9e85c8314239b94452f5a4b870941d8c860275ab2afbef288a36f209faa350de"

    static let SWTActivationCode = "1910ea1035fbc5c5ab70a16a36b01831a7cbcdab6c6670ccfee223186380b902"
    static let TransactionProcessorFramework = "707d1c87d2d896ef3c9b28b942df842dec980af07f89160916e1d2b3d0f856b9"
    static let NicknameFramework = "a0ecb2fed95ae1eb1c0a174de3d0fc91328a796fd640208ddaee16c246f82b0b"
    static let AnonymousQRFramework = "6a9cacd83bc5ae050eae6571d46eca84dc1b4fb4f6fd73aa328cc584c9429e4b"
    static let AQRIdentifySupportFramework = "edaaff65a6db9685e3eefe61507d7570c391fc3dfaa995bff10d7331b71e1269"
    static let EmailCheckFramework = "87d2c4db515daebd9eb025d18e64831b5c3a3baeb462ec7fcf339b4c55dfafab"
    static let WidgetUtilsFramework = "396908f9b9607bbb79f86d34f933b4c3a3285a39fa9765673d9fc83267e20f6a"
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
