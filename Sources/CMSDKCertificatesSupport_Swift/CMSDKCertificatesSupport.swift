//
//  CMSDKCertificatesSupport.swift
//  CMSDKCertificatesSupport
//
//  Created by Ondřej Stárek on 4/7/26.
//  Copyright © 2026 AHEAD iTec. All rights reserved.
//
import Foundation
import Security
import CMSDK
import X509
import SwiftASN1

public final class DefaultCSRGenerator: CSMCSRGenerating {
    public init() {}

    public func generatePKCS10(commonName: String, privateKey: SecKey) -> Result<Data, CSMError> {
        let subject = DistinguishedName([
            RelativeDistinguishedName(
                .init(type: .NameAttributes.countryName, utf8String: "CZ")
            ),
            RelativeDistinguishedName(
                .init(type: .NameAttributes.commonName, utf8String: commonName)
            )
        ])

        let attributes = CertificateSigningRequest.Attributes()

        do {
            let privateKey = try Certificate.PrivateKey(privateKey)
            let certificateRequest = try CertificateSigningRequest(
                version: .v1,
                subject: subject,
                privateKey: privateKey,
                attributes: attributes
            )
            return .success(Data(try certificateRequest.serializeAsPEM().derBytes))
        } catch {
            return .failure(
                .crypto(
                    code: .cryptoOperationFailed,
                    message: "Create PKCS#10 failed",
                    cause: error
                )
            )
        }
    }
}

public final class DefaultCertificateInfoProvider: CSMCertificateInfoProviding {
    public init() {}

    public func issuer(for certificate: SecCertificate) -> String? {
        try? X509.Certificate(certificate).issuer.map {
            $0.map { $0.value.description }.joined(separator: " ")
        }.joined(separator: " ")
    }

    public func expiration(for certificate: SecCertificate) -> Date? {
        try? X509.Certificate(certificate).notValidAfter
    }
}

@objc public final class CMSDKCertificatesSupportRegistrar: NSObject {
    @objc public static func registerProviders() {
        if CSMCSRGeneratorProvider.shared == nil {
            CSMCSRGeneratorProvider.shared = DefaultCSRGenerator()
        }

        if CSMCertificateInfoProvider.shared == nil {
            CSMCertificateInfoProvider.shared = DefaultCertificateInfoProvider()
        }
    }
}

@_cdecl("CMSDKCertificatesSupportRegisterProviders")
public func CMSDKCertificatesSupportRegisterProviders() {
    CMSDKCertificatesSupportRegistrar.registerProviders()
}
