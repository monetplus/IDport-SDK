// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private class Versions {
    static let CommunicatorFramework = "11.0.2"
    static let CoreUtilities = "4.1.0"
    static let JWECrypto = "4.0.0"
    static let SecureStorage = "9.0.0"
    static let TalsecCertificatesFramework = "12.4.0"
    static let TalsecAttestation = "5.0.1"
    static let CMSDK = "15.0.1"
    
    static let SWTActivationCode = "1.1.0"
    static let TransactionProcessor = "4.0.1"
    static let Nickname = "4.0.1"
    static let AnonymousQR = "4.0.1"
    static let AQRIdentifySupport = "4.0.1"
    
    static let Talsec = "0.2.1"
}

private class Checksums {
    static let CommunicatorFramework = "804dd18d219845b116a2a80ce67039a3cbf44f3d3ce1e7cdd2c575c697f33c9a"
    static let CoreUtilities = "7ca72ff7251255bd613b12207529a024b525a79a728d354e2d70b5ec37c232ba"
    static let JWECrypto = "7fd19f563c6ed7fed52276c3daff3ce8c216793aa8330b02b011443fcd6666d0"
    static let SecureStorage = "5166fa924fa7fc40f55c0d0df8967c00e063df5f1da9ff18f1c8fb8af37e47fd"
    static let TalsecCertificatesFramework = "8c15748c47034d42e6ab41774a15179d4038883147e2e242638e304716ad5ad5"
    static let TalsecAttestation = "2164404cd108aac91f21c78930f3534f9a2f380d51f96e5f0a95583b88a0b2e0"
    static let CMSDK = "089f377b8571648b26c9c3b11c29b66d690c2fc8124497fca0303d68731be151"
    
    static let SWTActivationCode = "ab516582534fa762ec20399a6da1637163f09e2c3bf001fab65c4ce452dfa43e"
    static let TransactionProcessor = "4da3ea851eb4482aeed719e02d8372bc478346fa380811fb10810c1e8cbe3d5a"
    static let Nickname = "9e3fa49f8f76c63fe5ffc44260ef660c59760f160ce764ed22094f62f40e3ffd"
    static let AnonymousQR = "fb8aaed420c56e8f78ccbd7e7f9fedec4b2a38d33bcba61959c020d94f11b9f5"
    static let AQRIdentifySupport = "5f29ab87a60ac18974d4b18c5db666cb082187e59007c990cd733777ec2be4f3"
    
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
                "SecureStorage",
                "TalsecCertificatesFramework",
                "TalsecAttestation",
                "Talsec",
                "CMSDK",
                "SWTActivationCode",
                "TransactionProcessor",
                "Nickname",
                "AnonymousQR",
                "AQRIdentifySupport",
            ]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "CommunicatorFramework", url: assembleUrl("utils", "CommunicatorFramework", Versions.CommunicatorFramework), checksum: Checksums.CommunicatorFramework),
        .binaryTarget(name: "CoreUtilities", url: assembleUrl("utils", "CoreUtilities", Versions.CoreUtilities), checksum: Checksums.CoreUtilities),
        .binaryTarget(name: "JWECrypto", url: assembleUrl("utils", "JWECrypto", Versions.JWECrypto), checksum: Checksums.JWECrypto),
        .binaryTarget(name: "SecureStorage", url: assembleUrl("talsec", "SecureStorage", Versions.SecureStorage), checksum: Checksums.SecureStorage),
        .binaryTarget(name: "TalsecCertificatesFramework", url: assembleUrl("talsec", "TalsecCertificatesFramework", Versions.TalsecCertificatesFramework), checksum: Checksums.TalsecCertificatesFramework),
        .binaryTarget(name: "TalsecAttestation", url: assembleUrl("talsec", "TalsecAttestation", Versions.TalsecAttestation), checksum: Checksums.TalsecAttestation),
        
        .binaryTarget(name: "Talsec", url: assembleUrl("talsec", "Talsec", Versions.Talsec), checksum: Checksums.Talsec),
        .binaryTarget(name: "CMSDK", url: assembleUrl("cmsdk", "CMSDK", Versions.CMSDK), checksum: Checksums.CMSDK),
        
        .binaryTarget(name: "SWTActivationCode", url: assembleUrl("widgetizing", "SWTActivationCode", Versions.SWTActivationCode), checksum: Checksums.SWTActivationCode),
        .binaryTarget(name: "TransactionProcessor", url: assembleUrl("widgetizing", "TransactionProcessor", Versions.TransactionProcessor), checksum: Checksums.TransactionProcessor),
        .binaryTarget(name: "Nickname", url: assembleUrl("widgetizing", "Nickname", Versions.Nickname), checksum: Checksums.Nickname),
        .binaryTarget(name: "AnonymousQR", url: assembleUrl("widgetizing", "AnonymousQR", Versions.AnonymousQR), checksum: Checksums.AnonymousQR),
        .binaryTarget(name: "AQRIdentifySupport", url: assembleUrl("widgetizing", "AQRIdentifySupport", Versions.AQRIdentifySupport), checksum: Checksums.AQRIdentifySupport),
    ]
)

func assembleUrl(_ group: String, _ artifact: String, _ version: String) -> String {
    let url = "\(nexusUrl)/\(group)/\(artifact)/\(version)/\(artifact).xcframework.zip"
    print(url)
    return url
}
