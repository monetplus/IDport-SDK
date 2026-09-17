10.0.0
* `CMSDK 27.0.0`
  * fixed cases when `AccountTypeStorage` removed all account types on keychain read failure
  * added `throws(CSMError)` to `AccountTypeManager.accountType` method (returns non-optional, throws `storageKeyNotFound` when missing)
  * added `throws(CSMError)` to `AccountTypeManager.allTypes` method
* `CMSDK 26.0.0`
  * fixed cases when `AccountsManager` removed all codenames on keychain read failure
  * added `throws(CSMError)` to `Account.deactivateOffline` method
  * added `throws(CSMError)` to `Account.getDaysToClientCertificateExpiration()` method
  * added `throws(CSMError)` to `AccountsManager.all` method
  * added `throws(CSMError)` to `AccountsManager.put` method
  * added `throws(CSMError)` to `AccountsManager.account` method
  * added `throws(CSMError)` to `AccountsManager.remove` method
  * revised persistent/temporary jugling of authentication key & certificate in AccountData storages
* `Widgetizing 25.0.0`
  * updated `PasswordAndNfinityFramework` to support multi-range liveness challenges
  * changed `FaceDetectionSenderManageable.sendFaceDetection(imageData:)` to `sendFaceDetection(capture:)`; the new `FaceCaptureData` includes image dimensions and capture time
  * replaced `LivenessCheckManageable.getLivenessPath()` with `getMultiRangeChallenge()` and added `MultiRangeChallengeState`
  * changed `LivenessCheckVerificationManageable`: replaced `livenessPath: [Corner]` with `challenges: [MultiRangeChallengeStep]` and `verifyLiveness(images:)` with `verifyLiveness(content:)`
  * replaced eye-gaze `Corner` paths with `MultiRangeChallengeStep` challenges
  * added `NfinityCloudError.unsupportedConfiguration` for unsupported verification configurations, challenges, and invalid capture sizes

9.1.1
* `DynamicCertificatePinning 18.1.2`
  * `FormatVersion` struct now contains optional parameter `formatVersion: Int?`

9.1.0
* `ApplicationAttestation 8.0.1` (new)
* `CMSDK 25.0.0`
  * added new target `CMSDKCertificatesSupport` for internal usage
* `CMSDK 24.1.0`
  * updated CommunicatorFramework dependency to `14.1.0`
  * added new input parameter `edgarConfigurationForTypes: [String: EdgarConfiguration]?` to `CASEmobileSDK.initSDK()`
  * added new public setter for `edgarConfigurationForTypes` to `CASEmobileSDK`
* `CMSDK 24.0.0`
  * updated CommunicatorFramework dependency to `14.0.1`
  * updated TalsecCertificatesFramework dependency to DynamicCertificatePinningFramework `18.0.0`
  * updated TalsecAttestation dependency to ApplicationAttestation `8.0.0`
  * updated SecureStorage dependency to `11.0.3`
  * updated dependencies git location
* `CMSDK 23.1.1`
  * fixed watchOS build
* `CMSDK 23.1.0`
  * added `.biometrics` value to `AuthenticationMethod` enum
* `CMSDK 23.0.0`
  * added enum `EncryptionType` with cases `RSA` and `EC`
  * added parameter `encryptionType` parameter to `initiateActivation` and `initiateUnblocking` methods in `Activation` to configure encryption (RSA is backward compatible, EC is new functionality)
  * changed return type of `Account.isBiometricAuthenticationActivated()` from `Bool` to  `Result<Bool, CSMError>`
  * changed return type of `Account.getDaysToCertificateExpiration()` from `Int` to  `Result<Int, CSMError>`
  * encapsulated internal storages to `CSMAccounData/Editor`
  * changed CSR creating (used apple/swift-certificates lib)
  * removed sensitive data transaction support
* `CMSDK 22.0.0`
  * replaced JWECrypto for JOSESwift 3.0.0
  * JOSESwift dependency now points to GitHub repository
* `CMSDK 21.0.0`
  * added async/await support
* `CMSDK 20.3.0`
  * added error code `355` when transaction owner mismatch
* `CommunicatorFramework 14.1.2`
  * fixed `EdgarCommunicator` not correctly encrypting defaultHeaders from `HTTPConfiguration`
* `CommunicatorFramework 14.1.1`
  * `GET` requests now have default header `Connection: close` instead of `nil`
  * Edgar HTTP Requests now have always have hardcoded `Content-Type: application/json` and `Connection` headers 
* `CommunicatorFramework 14.1.0`
  * `EdgarConfiguration` have new func `getClientIdentity()` for usage in `CMSDK`
  * `EdgarCache` made public and part of `EdgarConfiguration`
  * `EdgarCache.expiration` renamed to `EdgarCache.edgarCacheExpirationInSeconds`
  * fixed validation of `EdgarCache`
  * added default headers for every Edgar HTTP Request, specifically `Content-Type`, `Connection`, `Content-Length`
  * added more debug logs for Edgar requests
* `CommunicatorFramework 14.0.1`
  * Fixed JSON encoding of Encodable structures that contains '/' char in their properties.
* `CommunicatorFramework 14.0.0`
  * Added `EdgarCommunicator` of type `HttpCommunicator`, can be created via `CommunicatorFactory.create(edgarConfiguration:)` when `EdgarConfiguration` is present
* `CommunicatorFramework 13.0.0`
  * Renamed `Result` protocol to `CommunicatorResult`
* `CommunicatorFramework 12.1.0`
  * Changed minimal watchOS version to 8.0
  * Added request/response body log as BASE64
* `CommunicatorFramework 12.0.0`
  * Migrated to async - await
* `CommunicatorFramework 11.0.5`
  * Fixed generated Info.plist - added missing `CFBundleVersion` value
* `CommunicatorFramework 11.0.4`
  * Fixed deploy process (Info.plist generation, bump jobs, Nexus group)
* `CommunicatorFramework 11.0.3`
  * added `call(with parameters: CallParameters)` method to `Communicating` protocol and `MonetJSendNetworkControl` class
  * added support for arrays in URL query parameters
  * deprecated old `call` methods in `Communicating` protocol and `MonetJSendNetworkControl` class
* `CoreUtilities 6.0.1`
  * updated CI jobs
* `CoreUtilities 6.0.0`
  * initial changelog version
* `DynamicCertificatePinning 18.1.1` (new)
* `ECDHESSwift 2.0.2` (removed)
* `FederatedLogin 5.0.0`
  * updated `Widgetizing` dependency to `24.0.0`
  * updated `CommunicatorFramwork` dependency to `14.0.1`
* `FederatedLogin 4.0.0`
  * updated `Widgetizing` dependency to `18.0.0`
  * updated `CommunicatorFramwork` dependency to `13.0.0`
* `FederatedLogin 3.0.1`
  * updated `Widgetizing` dependency to `17.0.0`
* `FederatedLogin 3.0.0`
  * updated minimal version of `iOS` to `15`, `MacCatalyst` to `15`
  * updated `Widgetizing` dependency to `16.0.0`
  * updated `CommunicatorFramwork` dependency to `12.0.0`
* `FederatedLogin 2.0.2`
  * added slack notification
* `FederatedLogin 2.0.1`
  * fixed documentation
* `JWECrypto 5.0.0` (removed)
* `MethodManager 9.0.0`
  updated `CommunicatorFramework` dependency to `14.0.0`
* `MethodManager 8.0.0`
  * migrated to a new Method Manager API (from v4 to v5) - see https://docs.develop.monetplus.cz/idport/case/idport-case-method-manager/main/13_release_notes/release_notes.html#id10
  * added parameter `tenantId` to `SWTActivationCodeInitialization` constructor
* `MethodManager 7.1.0`
  * fixed enc to correct `.A256GCM` in `finalize()` method in `SWTActivationCode`
* `MethodManager 7.0.0`
  * removed `ECDHESSwift` dependency
  * updated `JOSESwift` dependency to `3.0.0`, used GitHub version
  * updated `Communicator` dependency to `13.0.0`
  * updated `Widgetizing` dependency to `18.0.0`
* `MethodManager 6.0.0`
  * redesigned `SWTActivationCode` API methods to support `async` / `await` swift feature
  * added protocols above `SWTActivationCode`
  * updated minimal version of `iOS` to `15` and `macCatalyst` to `15`
  * updated `Communicator` dependency to `12.0.0`
  * updated `Widgetizing` dependency to `17.0.0`
* `MethodManager 5.0.1`
  * fixed missing documentation for `templateContext` parameter in constructor for `SWTActivationCodeInitialization`
* `SecureStorage 11.1.0`
  * added `ecsec521` case to `KeyAlgorithm` enum
* `SecureStorage 11.0.3`
  * added missing package product: `SecureStorageTestTools`
* `SecureStorage 11.0.2`
  * fixed deployment target to iOS 14.0
* `SecureStorage 11.0.1`
  * fixed scheme for archiving
  * fixed deployment group
* `SecureStorage 11.0.0`
  * removed `KeychainQueryFactoryV1` class
  * added `ItemProtectionStorage` protocol, inherited by `KeychainStorage`
  * moved keychain queries construction for `Storage` protocol methods in `KeychainStorageImpl` to `KeychainQueryFactory` protocol
  * updated CI/CD jobs
  * revised targets in project - now we have single target for all supported platforms
* `SecureStorage 10.0.0`
  * init version of changelog
* `TalsecAttestation 5.0.1` (removed)
* `TalsecCertificatesFramework 12.5.0` (removed)
* `Widgetizing 24.0.0`
  * updated `CommunicatorFramework` dependency to `14.0.0`
* `Widgetizing 23.0.1`
  * fixed in `IAMAttribute` the `salt` generation, now random 32 bytes instead of `UUID()`
* `Widgetizing 23.0.0`
  * updated SecureStorage dependency to `11.0.0`
  * added two `migrate(otp:password:)` methods to `OneTimePasswordVerificationManageable` protocol in `OneTimePasswordFramework` framework to support migration to stronger algorithms used in `PasswordCryptoSuite`
  * added two `migrate(password:)` methods to `PasswordVerificationManageable` protocol in `PasswordFramework` framework to support migration to stronger algorithms used in `PasswordCryptoSuite`
  * added `password` parameter to `verify()` method of `OneTimePasswordVerificationManageable` protocol in `OneTimePasswordFramework` framework
  * revised password hashing in `OneTimePasswordFramework` and `PasswordFramework` frameworks
      * newly supported algorithms: `SHA`, `PBKDFB2`, `Scrypt`
      * supports migration to stronger algorithm based on recommendation from server
      * updated network communication objects to support new hashing scheme
          * added `PasswordCryptoSuite` to `InitResponseDataObject` 
          * added `PasswordCryptoSuiteParameters` with `Nonce: Data` and `Salt: Data` to `InitResponseDataObject`
          * added `PasswordMigration` to `InitResponseDataObject`
          * added `authorizationCode` to `VerifyRequest` in both widgets
* `Widgetizing 22.0.0`
  * added tokenizing support to `IAMAttributeFramework`
      * verified values can now be replaced with token, that can be used to bypass another pass through widget 
  * added parameter `useSecureEnclave` to method `create` in `IAMAttributeFactory`
  * added `VerificationOptions` enum with `verify`, `verifyWithTokenizing` and `bypass` cases with methods as associated values to continue widget flow.
  * added property `verifyOption` to `IAMAttributeVerificationManageable` protocol to enable multiple options of input verification
  * revised `Blocker` object
      * supports `blockerType` property
      * supports UPPERCASED or lowercased values for `blockerType` and `type`
* `Widgetizing 21.0.0`
  * fixed values in the enum `IdCardTypeOfCountry` in `PasswordAndNfinityFramework` - added `residenceBookletCZ`, removed `residencePermitSK`
* `Widgetizing 20.1.0`
  * added `blockers` getter to `Password` to expose `pwd.blockers` from `initializeTransactionResponseDataObject`
* `Widgetizing 20.0.0`
  * updated `PasswordAndNfinityFramework`, changed `DocumentScan` to `DocumentScanSender` + added new structs `DocumentVerifyPolling` and enum `PollAndVerifyState`
  * created new `Factory` structs with `create()` method for starting point of widgets
  * changed visibility of classes in all widgets, now only Protocols are visible
* `Widgetizing 19.0.0`
  * removed `ECDHESSwift` dependency
  * updated `JOSESwift` dependency to `3.0.0`, used official GitHub version
* `Widgetizing 18.0.0`
  * updated `CommunicatorFramework` dependency to `13.0.0`
* `Widgetizing 17.0.0`
  * updated minimal version of `iOS` to `15`
* `Widgetizing 16.0.0`
  * redesigned API methods to support `async` / `await` swift feature
  * added protocols above `AQRIdentifySupport` widget
  * updated `Communicator` dependency to `12.0.0`
* `Widgetizing 15.1.0`
  * added new `PasswordAndOneTimeCode` widget
  * fixed some unit tests
* `Widgetizing 15.0.0`
  * renamed `Swift.Result` extension methods `map`, `flatMap`, `mapError` and `flatMapError` by adding `Async` suffix
  * updated `Communicator` dependency to `11.0.5`
  * fixed update dependencies in `Package.resolved`
