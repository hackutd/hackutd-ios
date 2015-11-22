//
//  HUserDefaults.m
//  HackUTD
//
//  Created by Izuchukwu Elechi on 11/22/15.
//  Copyright © 2015 HackUTD. All rights reserved.
//

#import "HUserDefaults.h"HUserDefaultsKeyUserHasOnboarded

@implementation HUserDefaults

NSString *const HUserDefaultsKeyUserHasOnboarded = @"HUserDefaultsKeyUserHasOnboarded";

+ (void)asyncObjectForKey:(NSString *)key completion:(void (^)(id object))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        id object = [[NSUserDefaults standardUserDefaults] objectForKey:key];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(object);
        });
    });
}

+ (void)asyncSetObject:(id)object forKey:(NSString *)key {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
    });
}

@end
