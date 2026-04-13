//
//  CMSDKCertificatesSupportLoader.m
//  CASEmobileSDK
//
//  Created by ostarek on 10.04.2026.
//  Copyright © 2026 AHEAD iTec. All rights reserved.
//

#import "CMSDKCertificatesSupportObjC.h"

@implementation CMSDKCertificatesSupportLoader

+ (void)load {
    CMSDKCertificatesSupportRegisterProviders();
    NSLog(@"CMSDKCertificatesSupportLoader: loaded DefaultCSRGenerator() and DefaultCertificateInfoProvider()");
}

@end
