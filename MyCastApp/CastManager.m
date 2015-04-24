//
//  CastManager.m
//  MyCastApp
//
//  Created by Nate on 4/24/15.
//  Copyright (c) 2015 Nate. All rights reserved.
//

#import "CastManager.h"

@implementation CastManager

+ (instancetype)sharedCastManager {
    NSLog(@"sharedCastManager");
    static CastManager *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[self alloc] init];
    });
    return singleton;
}

- (instancetype)init {
    NSLog(@"init()");
    if (self = [super init]) {
        self.deviceScanner = [[GCKDeviceScanner alloc] init];
    }
    return self;
}


@end
