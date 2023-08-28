// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private class Versions {
    static let CommunicatorFramework = "11.0.2"
    static let CoreUtilities = "4.1.0"
    static let JWECrypto = "4.0.0"
    static let JOSESwift = "2.0.6"
    static let ECDHESSwift = "1.0.8"
    static let CryptoSwift = "1.5.1"
    static let SecureStorage = "9.0.0"
    static let TalsecCertificatesFramework = "12.4.0"
    static let TalsecAttestation = "5.0.1"
    static let CMSDK = "15.0.1"
    
    static let SWTActivationCode = "1.1.0"
    static let TransactionProcessorFramework = "5.0.0"
    static let NicknameFramework = "5.0.0"
    static let AnonymousQRFramework = "5.0.0"
    static let AQRIdentifySupportFramework = "5.0.0"
    static let WidgetUtilsFramework = "5.0.0"
    
    static let Talsec = "0.2.1"
}

private class Checksums {
    static let CommunicatorFramework = "804dd18d219845b116a2a80ce67039a3cbf44f3d3ce1e7cdd2c575c697f33c9a"
    static let CoreUtilities = "7ca72ff7251255bd613b12207529a024b525a79a728d354e2d70b5ec37c232ba"
    static let JWECrypto = "7fd19f563c6ed7fed52276c3daff3ce8c216793aa8330b02b011443fcd6666d0"
    static let ECDHESSwift = "3e67e516e52758c42b83947835a04b220e58b56f77f19c46ff7e9dabaa27ee08"
    static let SecureStorage = "5166fa924fa7fc40f55c0d0df8967c00e063df5f1da9ff18f1c8fb8af37e47fd"
    static let TalsecCertificatesFramework = "8c15748c47034d42e6ab41774a15179d4038883147e2e242638e304716ad5ad5"
    static let TalsecAttestation = "2164404cd108aac91f21c78930f3534f9a2f380d51f96e5f0a95583b88a0b2e0"
    static let CMSDK = "089f377b8571648b26c9c3b11c29b66d690c2fc8124497fca0303d68731be151"
    
    static let SWTActivationCode = "ab516582534fa762ec20399a6da1637163f09e2c3bf001fab65c4ce452dfa43e"
    static let TransactionProcessorFramework = "d944da1bfd1ee288f28d09547a680fe6db27406e1e71b2afe3665dabd712e0c2"
    static let NicknameFramework = "93878dbef6746a0335394915bf521c7688d69c28b28ea1faf093931d75acdb8e"
    static let AnonymousQRFramework = "2fb6cfab675dd637bfe32300b0f9bd79ca76f305bbf3cbe4f88aa2175f03e3c7"
    static let AQRIdentifySupportFramework = "1fa92a810785513bd0477fc297566c0fd55ff7ef3cf58d38e64e8d727ea3501d"
    static let WidgetUtilsFramework = "5d1fdd5e517cd8e58c73d9c107731bd532fe8189748725712c6e7bfd48d4af50"
    
    static let Talsec = "6dbc8fdfdfbe76bb6cdd957ebbfe762c694e2d59cc2da4cfeba264476fdd62f8"
}

let nexusUrl = "https://nexus3-public.monetplus.cz/repository/ahead-ios-release/com/aheaditec"

let package = Package(
    name: "IDportSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "IDportSDK",
            targets: [
                "IDportSDK",
                "CommunicatorFramework",
                "CoreUtilities",
                "JWECrypto",
                "ECDHESSwift",
                "SecureStorage",
                "TalsecCertificatesFramework",
                "TalsecAttestation",
                "Talsec",
                "CMSDK",
                "SWTActivationCode",
                "TransactionProcessorFramework",
                "NicknameFramework",
                "AnonymousQRFramework",
                "AQRIdentifySupportFramework",
                "WidgetUtilsFramework",
            ]
        )
    ],
    dependencies: [
        .package(url: "git@github.com:airsidemobile/JOSESwift.git", from: Version.init(stringLiteral: Versions.JOSESwift)),
        .package(url: "git@github.com:krzyzanowskim/CryptoSwift.git", from: Version.init(stringLiteral: Versions.CryptoSwift))
    ],
    targets: [
        .binaryTarget(name: "CommunicatorFramework", url: assembleUrl("utils", "CommunicatorFramework", Versions.CommunicatorFramework), checksum: Checksums.CommunicatorFramework),
        .binaryTarget(name: "CoreUtilities", url: assembleUrl("utils", "CoreUtilities", Versions.CoreUtilities), checksum: Checksums.CoreUtilities),
        .binaryTarget(name: "JWECrypto", url: assembleUrl("utils", "JWECrypto", Versions.JWECrypto), checksum: Checksums.JWECrypto),
        .binaryTarget(name: "ECDHESSwift", url: assembleUrl("utils", "ECDHESSwift", Versions.ECDHESSwift), checksum: Checksums.ECDHESSwift),
        .binaryTarget(name: "SecureStorage", url: assembleUrl("talsec", "SecureStorage", Versions.SecureStorage), checksum: Checksums.SecureStorage),
        .binaryTarget(name: "TalsecCertificatesFramework", url: assembleUrl("talsec", "TalsecCertificatesFramework", Versions.TalsecCertificatesFramework), checksum: Checksums.TalsecCertificatesFramework),
        .binaryTarget(name: "TalsecAttestation", url: assembleUrl("talsec", "TalsecAttestation", Versions.TalsecAttestation), checksum: Checksums.TalsecAttestation),
        
        .binaryTarget(name: "Talsec", url: assembleUrl("talsec", "Talsec", Versions.Talsec), checksum: Checksums.Talsec),
        .binaryTarget(name: "CMSDK", url: assembleUrl("cmsdk", "CMSDK", Versions.CMSDK), checksum: Checksums.CMSDK),
        
        .binaryTarget(name: "SWTActivationCode", url: assembleUrl("widgetizing", "SWTActivationCode", Versions.SWTActivationCode), checksum: Checksums.SWTActivationCode),
        .binaryTarget(name: "TransactionProcessorFramework", url: assembleUrl("widgetizing", "TransactionProcessorFramework", Versions.TransactionProcessorFramework), checksum: Checksums.TransactionProcessorFramework),
        .binaryTarget(name: "NicknameFramework", url: assembleUrl("widgetizing", "NicknameFramework", Versions.NicknameFramework), checksum: Checksums.NicknameFramework),
        .binaryTarget(name: "AnonymousQRFramework", url: assembleUrl("widgetizing", "AnonymousQRFramework", Versions.AnonymousQRFramework), checksum: Checksums.AnonymousQRFramework),
        .binaryTarget(name: "AQRIdentifySupportFramework", url: assembleUrl("widgetizing", "AQRIdentifySupportFramework", Versions.AQRIdentifySupportFramework), checksum: Checksums.AQRIdentifySupportFramework),
        .binaryTarget(name: "WidgetUtilsFramework", url: assembleUrl("widgetizing", "WidgetUtilsFramework", Versions.WidgetUtilsFramework), checksum: Checksums.WidgetUtilsFramework),
        .target(
            name: "IDportSDK",
            dependencies: [
                .product(name: "JOSESwift", package: "joseswift"),
                .product(name: "CryptoSwift", package: "CryptoSwift"),
            ]
        ),
    ]
)

func assembleUrl(_ group: String, _ artifact: String, _ version: String) -> String {
    let url = "\(nexusUrl)/\(group)/\(artifact)/\(version)/\(artifact).xcframework.zip"
    print(url)
    return url
}
