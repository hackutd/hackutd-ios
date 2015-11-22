//
//  HUserDefaults.h
//  HackUTD
//
//  Created by Izuchukwu Elechi on 11/22/15.
//  Copyright © 2015 HackUTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HUserDefaults : NSObject

extern NSString *const HUserDefaultsKeyUserHasOnboarded;

+ (void)asyncObjectForKey:(NSString *)key completion:(void (^)(id object))completion;
+ (void)asyncSetObject:(id)object forKey:(NSString *)key;

@end
