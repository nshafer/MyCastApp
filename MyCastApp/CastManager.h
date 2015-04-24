//
//  CastManager.h
//  MyCastApp
//
//  Created by Nate on 4/24/15.
//  Copyright (c) 2015 Nate. All rights reserved.
//

#import <GoogleCast/GoogleCast.h>
#import <Foundation/Foundation.h>

@interface CastManager : NSObject

@property(nonatomic, strong) GCKDeviceScanner *deviceScanner;

+ (instancetype)sharedCastManager;

@end
