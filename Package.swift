// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private class Versions {
    static let CommunicatorFramework = "11.0.2"
    static let CoreUtilities = "4.2.0"
    static let JWECrypto = "5.0.0"
    static let JOSESwift = "2.0.7"
    static let ECDHESSwift = "2.0.2"
    static let SecureStorage = "9.1.0"
    static let TalsecCertificatesFramework = "12.5.0"
    static let TalsecAttestation = "5.0.1"
    static let CMSDK = "20.0.0"
    
    static let SWTActivationCode = "5.0.0"
    static let TransactionProcessorFramework = "14.1.0"
    static let NicknameFramework = "14.1.0"
    static let AnonymousQRFramework = "14.1.0"
    static let AQRIdentifySupportFramework = "14.1.0"
    static let EmailCheckFramework = "14.1.0"
    static let WidgetUtilsFramework = "14.1.0"
    static let FederatedLoginFramework = "2.0.0"
    static let OpenIDConnectFramework = "2.0.0"
    
    static let Talsec = "1.1.1"
}

private class Checksums {
    static let CommunicatorFramework = "804dd18d219845b116a2a80ce67039a3cbf44f3d3ce1e7cdd2c575c697f33c9a"
    static let CoreUtilities = "de91c9753a277798b0624046603d0f5a1afcaf4a1aca3a1834c96dc5df6770f5"
    static let JWECrypto = "6aa0d8935668747ffbd04beabdd31a26cd64720efdb9f71c679e837f1e3ae1b1"
    static let JOSESwift = "5a5f822b05db76d37244320a956c74673d363b5a97df72f42ffca3ef57c089ef"
    static let ECDHESSwift = "3f083b9c2388b94f44129ea338df06477823037c8e4fb1055f9887fcd20ef57f"
    static let SecureStorage = "24667265ec916bed7c7157c4251746c815cde682011afacbd3b6876825c2c5d2"
    static let TalsecCertificatesFramework = "e0580c88adf7c0708bd0fb6447c20bb49c9fcc27e38de37c63cca074bad0c14c"
    static let TalsecAttestation = "2164404cd108aac91f21c78930f3534f9a2f380d51f96e5f0a95583b88a0b2e0"
    static let CMSDK = "7b4977bc0150382585a501c4324b39af48a81bd0ec9eaa0f0d5791a883210f61"
    
    static let SWTActivationCode = "ca9a10734cff7fe371850f3e867fa7b31cb0c6e1aff2bc9b2cf70a037fce3f2a"
    static let TransactionProcessorFramework = "bf089ce6ab982ea87c5a433d8786a21568d95b143583b4ec31053fafedd62e4f"
    static let NicknameFramework = "807671f331bb33b7125e637138cea3fce08f437afbc9aaf69cf32f9acf71b8a0"
    static let AnonymousQRFramework = "f89dac09a20c0c0f54e2063f87c714ab6e4feb4146ef3fa2a097c0c1cf51ea35"
    static let AQRIdentifySupportFramework = "3c9883368550af70c4aa62c4b058074b0f2db0b53c777fafb592b8e37996506f"
    static let EmailCheckFramework = "d3e6599b606b8870c3d69cf767e8891068c1769fddeca10dd366bd11037b964f"
    static let WidgetUtilsFramework = "8ef4e00833513778ffe6eeaf8715d5f5e9901b3b4a79699a827eba43cbc80013"
    static let FederatedLoginFramework = "0602682e59c34fdc0f41afbbc3f1ec02110b4e051a56f47c7ecf45b571b6cb5f"
    static let OpenIDConnectFramework = "29943a4910b9a791a35198d7688fd2a391b6da18fc146c5446ab307974db03ec"
    
    static let Talsec = "f94cba307567e0af84d00cbd27379585cfd3bccdec27446a1a62fbf85f4068c4"
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
