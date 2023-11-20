// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private class Versions {
    static let CommunicatorFramework = "11.0.2"
    static let CoreUtilities = "4.1.0"
    static let JWECrypto = "5.0.0"
    static let JOSESwift = "2.0.7"
    static let ECDHESSwift = "2.0.2"
    static let SecureStorage = "9.0.0"
    static let TalsecCertificatesFramework = "12.4.0"
    static let TalsecAttestation = "5.0.1"
    static let CMSDK = "16.0.0-PT"
    
    static let SWTActivationCode = "3.1.0"
    static let TransactionProcessorFramework = "8.0.0"
    static let NicknameFramework = "8.0.0"
    static let AnonymousQRFramework = "8.0.0"
    static let AQRIdentifySupportFramework = "8.0.0"
    static let EmailCheckFramework = "8.0.0"
    static let WidgetUtilsFramework = "8.0.0"
    static let FederatedLoginFramework = "2.0.0"
    static let OpenIDConnectFramework = "2.0.0"
    
    static let Talsec = "0.2.1"
}

private class Checksums {
    static let CommunicatorFramework = "804dd18d219845b116a2a80ce67039a3cbf44f3d3ce1e7cdd2c575c697f33c9a"
    static let CoreUtilities = "7ca72ff7251255bd613b12207529a024b525a79a728d354e2d70b5ec37c232ba"
    static let JWECrypto = "6aa0d8935668747ffbd04beabdd31a26cd64720efdb9f71c679e837f1e3ae1b1"
    static let JOSESwift = "5a5f822b05db76d37244320a956c74673d363b5a97df72f42ffca3ef57c089ef"
    static let ECDHESSwift = "3f083b9c2388b94f44129ea338df06477823037c8e4fb1055f9887fcd20ef57f"
    static let SecureStorage = "5166fa924fa7fc40f55c0d0df8967c00e063df5f1da9ff18f1c8fb8af37e47fd"
    static let TalsecCertificatesFramework = "8c15748c47034d42e6ab41774a15179d4038883147e2e242638e304716ad5ad5"
    static let TalsecAttestation = "2164404cd108aac91f21c78930f3534f9a2f380d51f96e5f0a95583b88a0b2e0"
    static let CMSDK = "abe653d8e2d064f4f7533dd7c147e122175562245461d7f8c35b8ed931df0c15"
    
    static let SWTActivationCode = "62616b5f0039ce7e7e0b7b52e1b9df7dc0735b25d1eaee28a2f3c328e4cc33b0"
    static let TransactionProcessorFramework = "f84ca5032e9c30c09fdf13f02eec35d296a9e6f8b240f36c1ea5cee88b019d8d"
    static let NicknameFramework = "b66f5c35bbc7aaf43125f4f78eacbea26f0b1bd317ff4c7eca5ccaf31efb87a4"
    static let AnonymousQRFramework = "5e05043e260dd6cfae6f74600de6444e52189360a96fafbfb49e0ca595325143"
    static let AQRIdentifySupportFramework = "3e3dc4d1c2af79284f7241b5a35aedba2aed0c52a37e3f5888b7a90de60c3658"
    static let EmailCheckFramework = "d91c6f9c8ebd3c8349198a8516432a7944fbebe3752ebdd7d343b806a4e1bf7e"
    static let WidgetUtilsFramework = "df641463a615d0dfd56698a2ac06ba915bddce360f02cd78374a235b9c1f87fc"
    static let FederatedLoginFramework = "0602682e59c34fdc0f41afbbc3f1ec02110b4e051a56f47c7ecf45b571b6cb5f"
    static let OpenIDConnectFramework = "29943a4910b9a791a35198d7688fd2a391b6da18fc146c5446ab307974db03ec"
    
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
                "JOSESwift",
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
        .binaryTarget(name: "ECDHESSwift", url: assembleUrl("utils", "ECDHESSwift", Versions.ECDHESSwift), checksum: Checksums.ECDHESSwift),
        .binaryTarget(name: "JOSESwift", url: assembleUrl("utils", "JOSESwift", Versions.JOSESwift), checksum: Checksums.JOSESwift),
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
        .target(
            name: "IDportSDK",
            dependencies: []
        ),
    ]
)

func assembleUrl(_ group: String, _ artifact: String, _ version: String) -> String {
    let url = "\(nexusUrl)/\(group)/\(artifact)/\(version)/\(artifact).xcframework.zip"
    print(url)
    return url
}
