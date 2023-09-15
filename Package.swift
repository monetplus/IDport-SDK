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
    static let CMSDK = "15.1.0"
    
    static let SWTActivationCode = "2.0.0"
    static let TransactionProcessorFramework = "6.0.0"
    static let NicknameFramework = "6.0.0"
    static let AnonymousQRFramework = "6.0.0"
    static let AQRIdentifySupportFramework = "6.0.0"
    static let EmailCheckFramework = "6.0.0"
    static let WidgetUtilsFramework = "6.0.0"
    static let FederatedLoginFramework = "1.0.1"
    static let OpenIDConnectFramework = "1.0.1"
    
    static let Talsec = "0.2.1"
}

private class Checksums {
    static let CommunicatorFramework = "804dd18d219845b116a2a80ce67039a3cbf44f3d3ce1e7cdd2c575c697f33c9a"
    static let CoreUtilities = "7ca72ff7251255bd613b12207529a024b525a79a728d354e2d70b5ec37c232ba"
    static let JWECrypto = "7fd19f563c6ed7fed52276c3daff3ce8c216793aa8330b02b011443fcd6666d0"
    static let JOSESwift = "9a8f1d1b3d63d1c6ad3d67cc9ae34a1bdbadb9004ed244ea0e5eeef9b8e2dcd8"
    static let ECDHESSwift = "3e67e516e52758c42b83947835a04b220e58b56f77f19c46ff7e9dabaa27ee08"
    static let CryptoSwift = "a73198b3462d4b98cf408a01bda3044c84bc9b35e61cc785fdae1a6d8f1a0f0e"
    static let SecureStorage = "5166fa924fa7fc40f55c0d0df8967c00e063df5f1da9ff18f1c8fb8af37e47fd"
    static let TalsecCertificatesFramework = "8c15748c47034d42e6ab41774a15179d4038883147e2e242638e304716ad5ad5"
    static let TalsecAttestation = "2164404cd108aac91f21c78930f3534f9a2f380d51f96e5f0a95583b88a0b2e0"
    static let CMSDK = "3323b345d8ca0f16c7decbca6741227a9458aed23282d5de10e1d88219d568fc"
    
    static let SWTActivationCode = "2bb9e906276a869ac7847d6758c81f1f65283084cb9acaa2d6855c3f662b7b93"
    static let TransactionProcessorFramework = "211163ae385d6dc78eafabedde6b952e7538380fb7f20477716ab16a9067c581"
    static let NicknameFramework = "dfde18c938a52d74208436beba797645a942155ad74d02096bcd7d14cb0ff7c5"
    static let AnonymousQRFramework = "445ceda650fe4b255c7e8ac75db5dac97f4fdb1b143cb0c1f7b569a2024e849f"
    static let AQRIdentifySupportFramework = "c5be983e136e5afb61a85fb31cdbb16948d6eedd3124ee09230e81673e330676"
    static let EmailCheckFramework = "c0df2cefab0a80119bdf91c661437688069b59ebc1500080a75f9530a1690207"
    static let WidgetUtilsFramework = "08a3616da383f3d219937aa431dbbfb50e9a22735226cb2a5364988a73c0d839"
    static let FederatedLoginFramework = "4df0b25b07fc94216cbedcf53fa5316176469dbe5ec5f1e68856344ef8df1733"
    static let OpenIDConnectFramework = "a346027f8e00804ab98207561488364667fd40554b7d32cfddcaf1b5bc3eda51"
    
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
                "CommunicatorFramework",
                "CoreUtilities",
                "JWECrypto",
                "JOSESwift",
                "ECDHESSwift",
                "CryptoSwift",
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
                "EmailCheckFramework",
                "WidgetUtilsFramework",
                "FederatedLoginFramework",
                "OpenIDConnectFramework",
            ]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "CommunicatorFramework", url: assembleUrl("utils", "CommunicatorFramework", Versions.CommunicatorFramework), checksum: Checksums.CommunicatorFramework),
        .binaryTarget(name: "CoreUtilities", url: assembleUrl("utils", "CoreUtilities", Versions.CoreUtilities), checksum: Checksums.CoreUtilities),
        .binaryTarget(name: "JWECrypto", url: assembleUrl("utils", "JWECrypto", Versions.JWECrypto), checksum: Checksums.JWECrypto),
        .binaryTarget(name: "JOSESwift", url: assembleUrl("utils", "JOSESwift", Versions.JOSESwift), checksum: Checksums.JOSESwift),
        .binaryTarget(name: "ECDHESSwift", url: assembleUrl("utils", "ECDHESSwift", Versions.ECDHESSwift), checksum: Checksums.ECDHESSwift),
        .binaryTarget(name: "CryptoSwift", url: assembleUrl("utils", "CryptoSwift", Versions.CryptoSwift), checksum: Checksums.CryptoSwift),
        .binaryTarget(name: "SecureStorage", url: assembleUrl("talsec", "SecureStorage", Versions.SecureStorage), checksum: Checksums.SecureStorage),
        .binaryTarget(name: "TalsecCertificatesFramework", url: assembleUrl("talsec", "TalsecCertificatesFramework", Versions.TalsecCertificatesFramework), checksum: Checksums.TalsecCertificatesFramework),
        .binaryTarget(name: "TalsecAttestation", url: assembleUrl("talsec", "TalsecAttestation", Versions.TalsecAttestation), checksum: Checksums.TalsecAttestation),
        
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
    ]
)

func assembleUrl(_ group: String, _ artifact: String, _ version: String) -> String {
    let url = "\(nexusUrl)/\(group)/\(artifact)/\(version)/\(artifact).xcframework.zip"
    print(url)
    return url
}
