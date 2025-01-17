//
//  RNDeviceBrightness.m
//  RNDeviceBrightness
//
//  Created by Calvin on 3/11/17.
//  Copyright © 2017 CapsLock. All rights reserved.
//

#import "RNDeviceBrightness.h"

@implementation RNDeviceBrightness

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setBrightnessLevel:(float)brightnessLevel)
{
//     [UIScreen mainScreen].brightness = brightnessLevel;
    dispatch_sync(dispatch_get_main_queue(), ^{
        [[UIScreen mainScreen] setBrightness: brightnessLevel];
      });
}

RCT_REMAP_METHOD(getBrightnessLevel,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    resolve(@([UIScreen mainScreen].brightness));
}

@end
